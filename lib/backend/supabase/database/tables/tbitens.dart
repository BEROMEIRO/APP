import '../database.dart';

class TbitensTable extends SupabaseTable<TbitensRow> {
  @override
  String get tableName => 'tbitens';

  @override
  TbitensRow createRow(Map<String, dynamic> data) => TbitensRow(data);
}

class TbitensRow extends SupabaseDataRow {
  TbitensRow(super.data);

  @override
  SupabaseTable get table => TbitensTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idproduto => getField<int>('idproduto');
  set idproduto(int? value) => setField<int>('idproduto', value);

  int? get quantidade => getField<int>('Quantidade');
  set quantidade(int? value) => setField<int>('Quantidade', value);
}
