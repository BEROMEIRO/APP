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

  String _OS = '';
  String get OS => _OS;
  set OS(String value) {
    _OS = value;
  }

  String _Projeto = '';
  String get Projeto => _Projeto;
  set Projeto(String value) {
    _Projeto = value;
  }

  String _Ocorrencia = '';
  String get Ocorrencia => _Ocorrencia;
  set Ocorrencia(String value) {
    _Ocorrencia = value;
  }

  String _Tipo = '';
  String get Tipo => _Tipo;
  set Tipo(String value) {
    _Tipo = value;
  }

  double _currentLat = 0.0;
  double get currentLat => _currentLat;
  set currentLat(double value) {
    _currentLat = value;
  }

  double _currentLng = 0.0;
  double get currentLng => _currentLng;
  set currentLng(double value) {
    _currentLng = value;
  }

  bool _isFirstDropdownSelected = false;
  bool get isFirstDropdownSelected => _isFirstDropdownSelected;
  set isFirstDropdownSelected(bool value) {
    _isFirstDropdownSelected = value;
  }

  bool _isSecondDropdownSelected = false;
  bool get isSecondDropdownSelected => _isSecondDropdownSelected;
  set isSecondDropdownSelected(bool value) {
    _isSecondDropdownSelected = value;
  }

  String _Descriptiom = '';
  String get Descriptiom => _Descriptiom;
  set Descriptiom(String value) {
    _Descriptiom = value;
  }

  bool _userExists = false;
  bool get userExists => _userExists;
  set userExists(bool value) {
    _userExists = value;
  }

  String _Telefone = '';
  String get Telefone => _Telefone;
  set Telefone(String value) {
    _Telefone = value;
  }

  String _Nome = '';
  String get Nome => _Nome;
  set Nome(String value) {
    _Nome = value;
  }

  String _Email = '';
  String get Email => _Email;
  set Email(String value) {
    _Email = value;
  }

  String _CPF = '';
  String get CPF => _CPF;
  set CPF(String value) {
    _CPF = value;
  }

  String _Unidade = '';
  String get Unidade => _Unidade;
  set Unidade(String value) {
    _Unidade = value;
  }

  String _uid = '';
  String get uid => _uid;
  set uid(String value) {
    _uid = value;
  }
}
