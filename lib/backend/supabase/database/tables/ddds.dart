import '../database.dart';

class DddsTable extends SupabaseTable<DddsRow> {
  @override
  String get tableName => 'ddds';

  @override
  DddsRow createRow(Map<String, dynamic> data) => DddsRow(data);
}

class DddsRow extends SupabaseDataRow {
  DddsRow(super.data);

  @override
  SupabaseTable get table => DddsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get codigoDdd => getField<int>('codigo_ddd');
  set codigoDdd(int? value) => setField<int>('codigo_ddd', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get regiao => getField<String>('regiao');
  set regiao(String? value) => setField<String>('regiao', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);
}
