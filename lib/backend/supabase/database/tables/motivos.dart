import '../database.dart';

class MotivosTable extends SupabaseTable<MotivosRow> {
  @override
  String get tableName => 'motivos';

  @override
  MotivosRow createRow(Map<String, dynamic> data) => MotivosRow(data);
}

class MotivosRow extends SupabaseDataRow {
  MotivosRow(super.data);

  @override
  SupabaseTable get table => MotivosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get motivo => getField<String>('motivo');
  set motivo(String? value) => setField<String>('motivo', value);

  String? get projeto => getField<String>('projeto');
  set projeto(String? value) => setField<String>('projeto', value);
}
