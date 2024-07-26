import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

const _kDocIdDelimeter = '|';
String _serializeDocumentReference(DocumentReference ref) {
  final docIds = <String>[];
  DocumentReference? currentRef = ref;
  while (currentRef != null) {
    docIds.add(currentRef.id);
    // Get the parent document (catching any errors that arise).
    currentRef = safeGet<DocumentReference?>(() => currentRef?.parent.parent);
  }
  // Reverse the list to get the correct ordering.
  return docIds.reversed.join(_kDocIdDelimeter);
}

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.string:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.dateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.dateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.latLng:
        data = (param as LatLng).serialize();
      case ParamType.color:
        data = (param as Color).toCssString();
      case ParamType.fFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.fFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.jSON:
        data = json.encode(param);
      case ParamType.documentReference:
        data = _serializeDocumentReference(param as DocumentReference);
      case ParamType.document:
        final reference = (param as FirestoreRecord).reference;
        data = _serializeDocumentReference(reference);

      case ParamType.supabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    _logger.severe('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

DocumentReference _deserializeDocumentReference(
  String refStr,
  List<String> collectionNamePath,
) {
  var path = '';
  final docIds = refStr.split(_kDocIdDelimeter);
  for (int i = 0; i < docIds.length && i < collectionNamePath.length; i++) {
    path += '/${collectionNamePath[i]}/${docIds[i]}';
  }
  return FirebaseFirestore.instance.doc(path);
}

enum ParamType {
  int,
  double,
  string,
  bool,
  dateTime,
  dateTimeRange,
  latLng,
  color,
  fFPlace,
  fFUploadedFile,
  jSON,
  document,
  documentReference,
  supabaseRow,
}

final Logger _logger = Logger('YourLoggerName');

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  List<String>? collectionNamePath,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .whereType<String>()
          .map((p) => p)
          .map((p) => deserializeParam<T>(p, paramType, false,
              collectionNamePath: collectionNamePath))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }

    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.string:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.dateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.dateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.latLng:
        return latLngFromString(param);
      case ParamType.color:
        return fromCssColor(param);
      case ParamType.fFPlace:
        return placeFromString(param);
      case ParamType.fFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.jSON:
        return json.decode(param);
      case ParamType.documentReference:
        return _deserializeDocumentReference(param, collectionNamePath ?? []);

      case ParamType.supabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        if (T == TiposRow) {
          return TiposRow(data);
        } else if (T == TbprodutoRow) {
          return TbprodutoRow(data);
        } else if (T == TbitensRow) {
          return TbitensRow(data);
        } else if (T == MotivosRow) {
          return MotivosRow(data);
        } else if (T == TbContatoRow) {
          return TbContatoRow(data);
        } else if (T == TbJogadorRow) {
          return TbJogadorRow(data);
        } else if (T == BanksRow) {
          return BanksRow(data);
        } else if (T == TbProjetoFedexRow) {
          return TbProjetoFedexRow(data);
        } else if (T == UsuriosRow) {
          return UsuriosRow(data);
        } else if (T == DddsRow) {
          return DddsRow(data);
        } else if (T == TbFedexOperacionalRow) {
          return TbFedexOperacionalRow(data);
        } else {
          return null;
        }

      default:
        return null;
    }
  } catch (e) {
    _logger.severe('Error deserializing parameter: $e');
    return null;
  }
}

Future<dynamic> Function(String) getDoc(
  List<String> collectionNamePath,
  RecordBuilder recordBuilder,
) {
  return (String ids) => _deserializeDocumentReference(ids, collectionNamePath)
      .get()
      .then((s) => recordBuilder(s));
}

Future<List<T>> Function(String) getDocList<T>(
  List<String> collectionNamePath,
  RecordBuilder<T> recordBuilder,
) {
  return (String idsList) {
    List<String> docIds = [];
    try {
      final ids = json.decode(idsList) as Iterable;
      docIds = ids.whereType<String>().map((d) => d).toList();
    } catch (_) {}
    return Future.wait(
      docIds.map(
        (ids) => _deserializeDocumentReference(ids, collectionNamePath)
            .get()
            .then((s) => recordBuilder(s)),
      ),
    ).then((docs) => docs.where((d) => d != null).map((d) => d!).toList());
  };
}
