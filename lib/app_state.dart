import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _listLinks = prefs.getStringList('ff_listLinks') ?? _listLinks;
    _sessionListToggle =
        prefs.getBool('ff_sessionListToggle') ?? _sessionListToggle;
    _appToken = prefs.getString('ff_appToken') ?? _appToken;
    _testingToken = prefs.getString('ff_testingToken') ?? _testingToken;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _listLinks = [
    'assets/images/green.png',
    'assets/images/orange.png'
  ];
  List<String> get listLinks => _listLinks;
  set listLinks(List<String> _value) {
    _listLinks = _value;
    prefs.setStringList('ff_listLinks', _value);
  }

  void addToListLinks(String _value) {
    _listLinks.add(_value);
    prefs.setStringList('ff_listLinks', _listLinks);
  }

  void removeFromListLinks(String _value) {
    _listLinks.remove(_value);
    prefs.setStringList('ff_listLinks', _listLinks);
  }

  void removeAtIndexFromListLinks(int _index) {
    _listLinks.removeAt(_index);
    prefs.setStringList('ff_listLinks', _listLinks);
  }

  bool _sessionListToggle = false;
  bool get sessionListToggle => _sessionListToggle;
  set sessionListToggle(bool _value) {
    _sessionListToggle = _value;
    prefs.setBool('ff_sessionListToggle', _value);
  }

  String _appToken = '';
  String get appToken => _appToken;
  set appToken(String _value) {
    _appToken = _value;
    prefs.setString('ff_appToken', _value);
  }

  String _testingToken = '';
  String get testingToken => _testingToken;
  set testingToken(String _value) {
    _testingToken = _value;
    prefs.setString('ff_testingToken', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
