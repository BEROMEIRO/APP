import '../database.dart';

class TbFedexOperacionalTable extends SupabaseTable<TbFedexOperacionalRow> {
  @override
  String get tableName => 'tb_fedex_operacional';

  @override
  TbFedexOperacionalRow createRow(Map<String, dynamic> data) =>
      TbFedexOperacionalRow(data);
}

class TbFedexOperacionalRow extends SupabaseDataRow {
  TbFedexOperacionalRow(super.data);

  @override
  SupabaseTable get table => TbFedexOperacionalTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get fase => getField<String>('fase');
  set fase(String? value) => setField<String>('fase', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  String? get conclusaoOperador => getField<String>('conclusao_operador');
  set conclusaoOperador(String? value) =>
      setField<String>('conclusao_operador', value);

  String? get classificacaoAutomatica =>
      getField<String>('classificacao_automatica');
  set classificacaoAutomatica(String? value) =>
      setField<String>('classificacao_automatica', value);

  String? get definicao => getField<String>('definicao');
  set definicao(String? value) => setField<String>('definicao', value);

  String? get statusRelatorio => getField<String>('status_relatorio');
  set statusRelatorio(String? value) =>
      setField<String>('status_relatorio', value);

  String? get contatoTelefonico => getField<String>('contato_telefonico');
  set contatoTelefonico(String? value) =>
      setField<String>('contato_telefonico', value);

  String? get cadastro => getField<String>('cadastro');
  set cadastro(String? value) => setField<String>('cadastro', value);

  String? get etapa => getField<String>('etapa');
  set etapa(String? value) => setField<String>('etapa', value);

  String? get projeto => getField<String>('projeto');
  set projeto(String? value) => setField<String>('projeto', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get acaoD1 => getField<String>('acao_d1');
  set acaoD1(String? value) => setField<String>('acao_d1', value);

  String? get acaoD29 => getField<String>('acao_d29');
  set acaoD29(String? value) => setField<String>('acao_d29', value);

  String? get kilometragem => getField<String>('kilometragem');
  set kilometragem(String? value) => setField<String>('kilometragem', value);

  String? get positionmotivo => getField<String>('positionmotivo');
  set positionmotivo(String? value) =>
      setField<String>('positionmotivo', value);

  String? get positionocorrencia => getField<String>('positionocorrencia');
  set positionocorrencia(String? value) =>
      setField<String>('positionocorrencia', value);

  String? get positiontipo => getField<String>('positiontipo');
  set positiontipo(String? value) => setField<String>('positiontipo', value);

  String? get statusFinalVCentral => getField<String>('status_final_v_central');
  set statusFinalVCentral(String? value) =>
      setField<String>('status_final_v_central', value);

  String? get statusFinalVPa => getField<String>('status_final_v_pa');
  set statusFinalVPa(String? value) =>
      setField<String>('status_final_v_pa', value);

  String? get finalizacao => getField<String>('finalizacao');
  set finalizacao(String? value) => setField<String>('finalizacao', value);

  int? get protocolo => getField<int>('protocolo');
  set protocolo(int? value) => setField<int>('protocolo', value);
}
