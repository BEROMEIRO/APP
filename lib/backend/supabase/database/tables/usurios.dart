import '../database.dart';

class UsuriosTable extends SupabaseTable<UsuriosRow> {
  @override
  String get tableName => 'usuários';

  @override
  UsuriosRow createRow(Map<String, dynamic> data) => UsuriosRow(data);
}

class UsuriosRow extends SupabaseDataRow {
  UsuriosRow(super.data);

  @override
  SupabaseTable get table => UsuriosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get telefone => getField<double>('Telefone');
  set telefone(double? value) => setField<double>('Telefone', value);

  String? get nome => getField<String>('Nome');
  set nome(String? value) => setField<String>('Nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  double? get cpf => getField<double>('CPF');
  set cpf(double? value) => setField<double>('CPF', value);

  String? get unidade => getField<String>('Unidade');
  set unidade(String? value) => setField<String>('Unidade', value);

  String? get codigo => getField<String>('Codigo');
  set codigo(String? value) => setField<String>('Codigo', value);
}
