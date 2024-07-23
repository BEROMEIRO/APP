import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class InserirEmMassaCall {
  static Future<ApiCallResponse> call({
    dynamic apivarOSJson,
    String? apivarTel = '',
    String? apivarNome = '',
    String? apivarEmail = '',
    String? apivarCPF = '',
    String? apivarUnidadedeAtendimento = '',
  }) async {
    final apivarOS = _serializeJson(apivarOSJson, true);
    final ffApiRequestBody = '''
{
  "os": $apivarOS,
  "nome_tecnico": "$apivarNome",
  "telefone_tecnico": "$apivarTel",
  "ocorrencia": "EC Fechado",
  "unidade": "$apivarUnidadedeAtendimento",
  "atendente_abertura": null,
  "problema_apresentado": "TESTE APP",
  "nr_atendimento": "01491581",
  "status": "CANC NÃO AUT - SEM AJUSTE CADASTRAL",
  "retorno_tecnico": null,
  "dt_fechamento": null,
  "obs": null,
  "alteracao_cadastral": null,
  "atendente_fechamento": "FRANCIELLY VITORIA",
  "tipo": "Instalação",
  "projeto": "FISERV",
  "dt_abertura_d1": null,
  "d1": null,
  "tipo_atendimento": null,
  "cep": null,
  "alteracao_endereco": null,
  "alteracao_telefone": null,
  "alteracao_hf": null,
  "acao_d1": null,
  "atendente_fechamento_d1": null,
  "dt_fechamento_dt1": null,
  "atendente_fechamento_d29": null,
  "dt_fechamento_d29": null,
  "acao_d29": null,
  "qtd_equipamentos": null,
  "tecnologia": null,
  "razao_social": null,
  "tipo_logradouro": null,
  "numero": null,
  "bairro": null,
  "cidade": null,
  "descricao": null,
  "kilometragem": null,
  "uf": null,
  "complemento": null,
  "preferencia": null,
  "telefonebacklog": null,
  "telefonebacklog1": null,
  "telefonebacklog2": null,
  "dt_fechamento_d1": null,
  "subprojeto": null,
  "rlog": null,
  "ult_dt_rlog": null,
  "modelo": null,
  "pv": null,
  "dt_abertura_d8": null,
  "prev_atendimento": null,
  "getc": null,
  "dt_abertura_d29_oficial": null,
  "dt_fechamento_d29_oficial": null,
  "acao_d29_oficial": null,
  "dt_ultima_atu": null,
  "reabertura": null,
  "fase": "D+0",
  "conclusao_operador": null,
  "definicao": null,
  "status_relatorio": null,
  "contato_telefonico": null,
  "etapa": null,
  "question": null,
  "dt_canc_aut": null,
  "cpf": "$apivarCPF",
  "longitude": null,
  "latitude": null,
  "imageurl": null,
  "cliente": null,
  "tma_d0": null,
  "fechto_d0": null,
  "versao": null,
  "positionmotivo": null,
  "dt_fechamento_d8": null,
  "atendente_fechamento_d0": null,
  "dt_reagendamento": null,
  "status_final_v_central": null,
  "status_final_v_pa": null,
  "chipfone": null,
  "chave": null,
  "meio_captura": null,
  "call_id": null,
  "user_id": "23c1763f-24a5-44fd-a2b1-4ba45eead8d3"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Inserir em Massa',
      apiUrl:
          'https://jhvetisczbpikndrfljv.supabase.co/rest/v1/tb_projeto_fedex',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpodmV0aXNjemJwaWtuZHJmbGp2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxMTI2MzEsImV4cCI6MjAyMTY4ODYzMX0.5XjUWd-HTKJabc2zjrzXscMvSN1KTHccpVYGcXozbTw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class APIProjetoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'APIProjeto',
      apiUrl:
          'https://jhvetisczbpikndrfljv.supabase.co/rest/v1/banks?select=name',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpodmV0aXNjemJwaWtuZHJmbGp2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxMTI2MzEsImV4cCI6MjAyMTY4ODYzMX0.5XjUWd-HTKJabc2zjrzXscMvSN1KTHccpVYGcXozbTw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
}

class APIOcorrenciaCall {
  static Future<ApiCallResponse> call({
    String? name = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'APIOcorrencia',
      apiUrl:
          'https://jhvetisczbpikndrfljv.supabase.co/rest/v1/motivos?projeto=eq.$name&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpodmV0aXNjemJwaWtuZHJmbGp2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxMTI2MzEsImV4cCI6MjAyMTY4ODYzMX0.5XjUWd-HTKJabc2zjrzXscMvSN1KTHccpVYGcXozbTw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? motivo(dynamic response) => (getJsonField(
        response,
        r'''$[:].motivo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? projeto(dynamic response) => (getJsonField(
        response,
        r'''$[:].projeto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class APITiposPedidosCall {
  static Future<ApiCallResponse> call({
    String? projeto = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'APITiposPedidos',
      apiUrl:
          'https://jhvetisczbpikndrfljv.supabase.co/rest/v1/tipos?projeto=eq.$projeto&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpodmV0aXNjemJwaWtuZHJmbGp2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxMTI2MzEsImV4cCI6MjAyMTY4ODYzMX0.5XjUWd-HTKJabc2zjrzXscMvSN1KTHccpVYGcXozbTw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? tipoPedido(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? projetoTipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].projeto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class APITbProjetoOSCall {
  static Future<ApiCallResponse> call({
    String? os = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'APITbProjetoOS',
      apiUrl:
          'https://jhvetisczbpikndrfljv.supabase.co/rest/v1/tb_projeto_fedex?os=eq.$os&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpodmV0aXNjemJwaWtuZHJmbGp2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDYxMTI2MzEsImV4cCI6MjAyMTY4ODYzMX0.5XjUWd-HTKJabc2zjrzXscMvSN1KTHccpVYGcXozbTw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? dtaberturajson(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].dt_abertura''',
      ));
  static String? osjson(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].os''',
      ));
  static String? statusjson(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  static String? ocorrenciajson(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].ocorrencia''',
      ));
  static String? nratendimentojson(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].nr_atendimento''',
      ));
  static String? problemaapresentadojson(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].problema_apresentado''',
      ));
  static String? atendentefechamentojson(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].atendente_fechamento''',
      ));
}

class NearbyPlacesCall {
  static Future<ApiCallResponse> call({
    String? lat = '-23.53363011613674',
    String? lng = '-46.55850547117835',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'NearbyPlaces',
      apiUrl:
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=AIzaSyBqL0ucZUVD4JJ--zpW1746OWd4nNd9Wyk',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? nearbyLalLng(dynamic response) => getJsonField(
        response,
        r'''$.results[:].geometry.location''',
        true,
      ) as List?;
  static List<double>? nearbyLat(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].geometry.location.lat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? nearbyLng(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].geometry.location.lng''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
