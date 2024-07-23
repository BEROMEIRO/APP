import '../database.dart';

class TbProjetoFedexTable extends SupabaseTable<TbProjetoFedexRow> {
  @override
  String get tableName => 'tb_projeto_fedex';

  @override
  TbProjetoFedexRow createRow(Map<String, dynamic> data) =>
      TbProjetoFedexRow(data);
}

class TbProjetoFedexRow extends SupabaseDataRow {
  TbProjetoFedexRow(super.data);

  @override
  SupabaseTable get table => TbProjetoFedexTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get dtAbertura => getField<DateTime>('dt_abertura');
  set dtAbertura(DateTime? value) => setField<DateTime>('dt_abertura', value);

  String? get os => getField<String>('os');
  set os(String? value) => setField<String>('os', value);

  String? get nomeTecnico => getField<String>('nome_tecnico');
  set nomeTecnico(String? value) => setField<String>('nome_tecnico', value);

  String? get telefoneTecnico => getField<String>('telefone_tecnico');
  set telefoneTecnico(String? value) =>
      setField<String>('telefone_tecnico', value);

  String? get ocorrencia => getField<String>('ocorrencia');
  set ocorrencia(String? value) => setField<String>('ocorrencia', value);

  String? get unidade => getField<String>('unidade');
  set unidade(String? value) => setField<String>('unidade', value);

  String? get atendenteAbertura => getField<String>('atendente_abertura');
  set atendenteAbertura(String? value) =>
      setField<String>('atendente_abertura', value);

  String? get problemaApresentado => getField<String>('problema_apresentado');
  set problemaApresentado(String? value) =>
      setField<String>('problema_apresentado', value);

  String? get nrAtendimento => getField<String>('nr_atendimento');
  set nrAtendimento(String? value) => setField<String>('nr_atendimento', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get retornoTecnico => getField<String>('retorno_tecnico');
  set retornoTecnico(String? value) =>
      setField<String>('retorno_tecnico', value);

  DateTime? get dtFechamento => getField<DateTime>('dt_fechamento');
  set dtFechamento(DateTime? value) =>
      setField<DateTime>('dt_fechamento', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get alteracaoCadastral => getField<String>('alteracao_cadastral');
  set alteracaoCadastral(String? value) =>
      setField<String>('alteracao_cadastral', value);

  String? get atendenteFechamento => getField<String>('atendente_fechamento');
  set atendenteFechamento(String? value) =>
      setField<String>('atendente_fechamento', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get projeto => getField<String>('projeto');
  set projeto(String? value) => setField<String>('projeto', value);

  DateTime? get dtAberturaD1 => getField<DateTime>('dt_abertura_d1');
  set dtAberturaD1(DateTime? value) =>
      setField<DateTime>('dt_abertura_d1', value);

  String? get d1 => getField<String>('d1');
  set d1(String? value) => setField<String>('d1', value);

  String? get tipoAtendimento => getField<String>('tipo_atendimento');
  set tipoAtendimento(String? value) =>
      setField<String>('tipo_atendimento', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get alteracaoEndereco => getField<String>('alteracao_endereco');
  set alteracaoEndereco(String? value) =>
      setField<String>('alteracao_endereco', value);

  String? get alteracaoTelefone => getField<String>('alteracao_telefone');
  set alteracaoTelefone(String? value) =>
      setField<String>('alteracao_telefone', value);

  String? get alteracaoHf => getField<String>('alteracao_hf');
  set alteracaoHf(String? value) => setField<String>('alteracao_hf', value);

  String? get acaoD1 => getField<String>('acao_d1');
  set acaoD1(String? value) => setField<String>('acao_d1', value);

  String? get atendenteFechamentoD1 =>
      getField<String>('atendente_fechamento_d1');
  set atendenteFechamentoD1(String? value) =>
      setField<String>('atendente_fechamento_d1', value);

  DateTime? get dtFechamentoDt1 => getField<DateTime>('dt_fechamento_dt1');
  set dtFechamentoDt1(DateTime? value) =>
      setField<DateTime>('dt_fechamento_dt1', value);

  String? get atendenteFechamentoD29 =>
      getField<String>('atendente_fechamento_d29');
  set atendenteFechamentoD29(String? value) =>
      setField<String>('atendente_fechamento_d29', value);

  DateTime? get dtFechamentoD29 => getField<DateTime>('dt_fechamento_d29');
  set dtFechamentoD29(DateTime? value) =>
      setField<DateTime>('dt_fechamento_d29', value);

  String? get acaoD29 => getField<String>('acao_d29');
  set acaoD29(String? value) => setField<String>('acao_d29', value);

  int? get qtdEquipamentos => getField<int>('qtd_equipamentos');
  set qtdEquipamentos(int? value) => setField<int>('qtd_equipamentos', value);

  String? get tecnologia => getField<String>('tecnologia');
  set tecnologia(String? value) => setField<String>('tecnologia', value);

  String? get razaoSocial => getField<String>('razao_social');
  set razaoSocial(String? value) => setField<String>('razao_social', value);

  String? get tipoLogradouro => getField<String>('tipo_logradouro');
  set tipoLogradouro(String? value) =>
      setField<String>('tipo_logradouro', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double? get kilometragem => getField<double>('kilometragem');
  set kilometragem(double? value) => setField<double>('kilometragem', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get preferencia => getField<String>('preferencia');
  set preferencia(String? value) => setField<String>('preferencia', value);

  String? get telefonebacklog => getField<String>('telefonebacklog');
  set telefonebacklog(String? value) =>
      setField<String>('telefonebacklog', value);

  String? get telefonebacklog1 => getField<String>('telefonebacklog1');
  set telefonebacklog1(String? value) =>
      setField<String>('telefonebacklog1', value);

  String? get telefonebacklog2 => getField<String>('telefonebacklog2');
  set telefonebacklog2(String? value) =>
      setField<String>('telefonebacklog2', value);

  DateTime? get dtFechamentoD1 => getField<DateTime>('dt_fechamento_d1');
  set dtFechamentoD1(DateTime? value) =>
      setField<DateTime>('dt_fechamento_d1', value);

  String? get subprojeto => getField<String>('subprojeto');
  set subprojeto(String? value) => setField<String>('subprojeto', value);

  String? get rlog => getField<String>('rlog');
  set rlog(String? value) => setField<String>('rlog', value);

  DateTime? get ultDtRlog => getField<DateTime>('ult_dt_rlog');
  set ultDtRlog(DateTime? value) => setField<DateTime>('ult_dt_rlog', value);

  String? get modelo => getField<String>('modelo');
  set modelo(String? value) => setField<String>('modelo', value);

  String? get pv => getField<String>('pv');
  set pv(String? value) => setField<String>('pv', value);

  DateTime? get dtAberturaD8 => getField<DateTime>('dt_abertura_d8');
  set dtAberturaD8(DateTime? value) =>
      setField<DateTime>('dt_abertura_d8', value);

  DateTime? get prevAtendimento => getField<DateTime>('prev_atendimento');
  set prevAtendimento(DateTime? value) =>
      setField<DateTime>('prev_atendimento', value);

  String? get getc => getField<String>('getc');
  set getc(String? value) => setField<String>('getc', value);

  DateTime? get dtAberturaD29Oficial =>
      getField<DateTime>('dt_abertura_d29_oficial');
  set dtAberturaD29Oficial(DateTime? value) =>
      setField<DateTime>('dt_abertura_d29_oficial', value);

  DateTime? get dtFechamentoD29Oficial =>
      getField<DateTime>('dt_fechamento_d29_oficial');
  set dtFechamentoD29Oficial(DateTime? value) =>
      setField<DateTime>('dt_fechamento_d29_oficial', value);

  String? get acaoD29Oficial => getField<String>('acao_d29_oficial');
  set acaoD29Oficial(String? value) =>
      setField<String>('acao_d29_oficial', value);

  DateTime? get dtUltimaAtu => getField<DateTime>('dt_ultima_atu');
  set dtUltimaAtu(DateTime? value) =>
      setField<DateTime>('dt_ultima_atu', value);

  String? get reabertura => getField<String>('reabertura');
  set reabertura(String? value) => setField<String>('reabertura', value);

  String? get fase => getField<String>('fase');
  set fase(String? value) => setField<String>('fase', value);

  String? get conclusaoOperador => getField<String>('conclusao_operador');
  set conclusaoOperador(String? value) =>
      setField<String>('conclusao_operador', value);

  String? get definicao => getField<String>('definicao');
  set definicao(String? value) => setField<String>('definicao', value);

  String? get statusRelatorio => getField<String>('status_relatorio');
  set statusRelatorio(String? value) =>
      setField<String>('status_relatorio', value);

  String? get contatoTelefonico => getField<String>('contato_telefonico');
  set contatoTelefonico(String? value) =>
      setField<String>('contato_telefonico', value);

  String? get etapa => getField<String>('etapa');
  set etapa(String? value) => setField<String>('etapa', value);

  String? get question => getField<String>('question');
  set question(String? value) => setField<String>('question', value);

  DateTime? get dtCancAut => getField<DateTime>('dt_canc_aut');
  set dtCancAut(DateTime? value) => setField<DateTime>('dt_canc_aut', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  String? get imageurl => getField<String>('imageurl');
  set imageurl(String? value) => setField<String>('imageurl', value);

  String? get cliente => getField<String>('cliente');
  set cliente(String? value) => setField<String>('cliente', value);

  double? get tmaD0 => getField<double>('tma_d0');
  set tmaD0(double? value) => setField<double>('tma_d0', value);

  DateTime? get fechtoD0 => getField<DateTime>('fechto_d0');
  set fechtoD0(DateTime? value) => setField<DateTime>('fechto_d0', value);

  String? get versao => getField<String>('versao');
  set versao(String? value) => setField<String>('versao', value);

  String? get positionmotivo => getField<String>('positionmotivo');
  set positionmotivo(String? value) =>
      setField<String>('positionmotivo', value);

  DateTime? get dtFechamentoD8 => getField<DateTime>('dt_fechamento_d8');
  set dtFechamentoD8(DateTime? value) =>
      setField<DateTime>('dt_fechamento_d8', value);

  String? get atendenteFechamentoD0 =>
      getField<String>('atendente_fechamento_d0');
  set atendenteFechamentoD0(String? value) =>
      setField<String>('atendente_fechamento_d0', value);

  DateTime? get dtReagendamento => getField<DateTime>('dt_reagendamento');
  set dtReagendamento(DateTime? value) =>
      setField<DateTime>('dt_reagendamento', value);

  String? get statusFinalVCentral => getField<String>('status_final_v_central');
  set statusFinalVCentral(String? value) =>
      setField<String>('status_final_v_central', value);

  String? get statusFinalVPa => getField<String>('status_final_v_pa');
  set statusFinalVPa(String? value) =>
      setField<String>('status_final_v_pa', value);

  String? get chipfone => getField<String>('chipfone');
  set chipfone(String? value) => setField<String>('chipfone', value);

  String? get chave => getField<String>('chave');
  set chave(String? value) => setField<String>('chave', value);

  String? get meioCaptura => getField<String>('meio_captura');
  set meioCaptura(String? value) => setField<String>('meio_captura', value);

  String? get callId => getField<String>('call_id');
  set callId(String? value) => setField<String>('call_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
