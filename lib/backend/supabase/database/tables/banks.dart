import '../database.dart';

class BanksTable extends SupabaseTable<BanksRow> {
  @override
  String get tableName => 'banks';

  @override
  BanksRow createRow(Map<String, dynamic> data) => BanksRow(data);
}

class BanksRow extends SupabaseDataRow {
  BanksRow(super.data);

  @override
  SupabaseTable get table => BanksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
