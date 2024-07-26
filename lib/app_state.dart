import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  // Campos privados
  String _os = '';
  String _projeto = '';
  String _ocorrencia = '';
  String _tipo = '';
  double _currentLat = 0.0;
  double _currentLng = 0.0;
  bool _isFirstDropdownSelected = false;
  bool _isSecondDropdownSelected = false;
  String _description = '';
  bool _userExists = false;
  String _telefone = '';
  String _nome = '';
  String _email = '';
  String _cpf = '';
  String _unidade = '';
  String _uid = '';

  // Acesso direto aos campos privados
  String get os => _os;
  set os(String value) {
    _os = value;
    notifyListeners();
  }

  String get projeto => _projeto;
  set projeto(String value) {
    _projeto = value;
    notifyListeners();
  }

  String get ocorrencia => _ocorrencia;
  set ocorrencia(String value) {
    _ocorrencia = value;
    notifyListeners();
  }

  String get tipo => _tipo;
  set tipo(String value) {
    _tipo = value;
    notifyListeners();
  }

  double get currentLat => _currentLat;
  set currentLat(double value) {
    _currentLat = value;
    notifyListeners();
  }

  double get currentLng => _currentLng;
  set currentLng(double value) {
    _currentLng = value;
    notifyListeners();
  }

  bool get isFirstDropdownSelected => _isFirstDropdownSelected;
  set isFirstDropdownSelected(bool value) {
    _isFirstDropdownSelected = value;
    notifyListeners();
  }

  bool get isSecondDropdownSelected => _isSecondDropdownSelected;
  set isSecondDropdownSelected(bool value) {
    _isSecondDropdownSelected = value;
    notifyListeners();
  }

  String get description => _description;
  set description(String value) {
    _description = value;
    notifyListeners();
  }

  bool get userExists => _userExists;
  set userExists(bool value) {
    _userExists = value;
    notifyListeners();
  }

  String get telefone => _telefone;
  set telefone(String value) {
    _telefone = value;
    notifyListeners();
  }

  String get nome => _nome;
  set nome(String value) {
    _nome = value;
    notifyListeners();
  }

  String get email => _email;
  set email(String value) {
    _email = value;
    notifyListeners();
  }

  String get cpf => _cpf;
  set cpf(String value) {
    _cpf = value;
    notifyListeners();
  }

  String get unidade => _unidade;
  set unidade(String value) {
    _unidade = value;
    notifyListeners();
  }

  String get uid => _uid;
  set uid(String value) {
    _uid = value;
    notifyListeners();
  }
}
