import '../database.dart';

class TbContatoTable extends SupabaseTable<TbContatoRow> {
  @override
  String get tableName => 'TbContato';

  @override
  TbContatoRow createRow(Map<String, dynamic> data) => TbContatoRow(data);
}

class TbContatoRow extends SupabaseDataRow {
  TbContatoRow(super.data);

  @override
  SupabaseTable get table => TbContatoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('Nome');
  set nome(String? value) => setField<String>('Nome', value);

  double? get telefone => getField<double>('Telefone');
  set telefone(double? value) => setField<double>('Telefone', value);

  String? get cidade => getField<String>('Cidade');
  set cidade(String? value) => setField<String>('Cidade', value);
}
