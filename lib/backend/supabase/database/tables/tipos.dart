import '../database.dart';

class TiposTable extends SupabaseTable<TiposRow> {
  @override
  String get tableName => 'tipos';

  @override
  TiposRow createRow(Map<String, dynamic> data) => TiposRow(data);
}

class TiposRow extends SupabaseDataRow {
  TiposRow(super.data);

  @override
  SupabaseTable get table => TiposTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get projeto => getField<String>('projeto');
  set projeto(String? value) => setField<String>('projeto', value);
}
