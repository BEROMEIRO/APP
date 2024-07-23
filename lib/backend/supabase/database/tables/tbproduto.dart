import '../database.dart';

class TbprodutoTable extends SupabaseTable<TbprodutoRow> {
  @override
  String get tableName => 'tbproduto';

  @override
  TbprodutoRow createRow(Map<String, dynamic> data) => TbprodutoRow(data);
}

class TbprodutoRow extends SupabaseDataRow {
  TbprodutoRow(super.data);

  @override
  SupabaseTable get table => TbprodutoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get produto => getField<String>('produto');
  set produto(String? value) => setField<String>('produto', value);
}
