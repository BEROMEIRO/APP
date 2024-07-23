import '../database.dart';

class TbJogadorTable extends SupabaseTable<TbJogadorRow> {
  @override
  String get tableName => 'TbJogador';

  @override
  TbJogadorRow createRow(Map<String, dynamic> data) => TbJogadorRow(data);
}

class TbJogadorRow extends SupabaseDataRow {
  TbJogadorRow(super.data);

  @override
  SupabaseTable get table => TbJogadorTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get jogador => getField<String>('Jogador');
  set jogador(String? value) => setField<String>('Jogador', value);

  int? get life => getField<int>('Life');
  set life(int? value) => setField<int>('Life', value);

  int? get mana => getField<int>('Mana');
  set mana(int? value) => setField<int>('Mana', value);

  int? get dano => getField<int>('Dano');
  set dano(int? value) => setField<int>('Dano', value);

  int? get defesa => getField<int>('Defesa');
  set defesa(int? value) => setField<int>('Defesa', value);
}
