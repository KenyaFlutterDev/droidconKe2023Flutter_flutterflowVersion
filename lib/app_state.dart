import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _listLinks = prefs.getStringList('ff_listLinks') ?? _listLinks;
    });
    _safeInit(() {
      _sessionListToggle =
          prefs.getBool('ff_sessionListToggle') ?? _sessionListToggle;
    });
    _safeInit(() {
      _appToken = prefs.getString('ff_appToken') ?? _appToken;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_user')) {
        try {
          _user = jsonDecode(prefs.getString('ff_user') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
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

  void updateListLinksAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _listLinks[_index] = updateFn(_listLinks[_index]);
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

  dynamic _user;
  dynamic get user => _user;
  set user(dynamic _value) {
    _user = _value;
    prefs.setString('ff_user', jsonEncode(_value));
  }

  final _numberOfSpeakersManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> numberOfSpeakers({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _numberOfSpeakersManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearNumberOfSpeakersCache() => _numberOfSpeakersManager.clear();
  void clearNumberOfSpeakersCacheKey(String? uniqueKey) =>
      _numberOfSpeakersManager.clearRequest(uniqueKey);

  final _allSessionsNumberManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> allSessionsNumber({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _allSessionsNumberManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAllSessionsNumberCache() => _allSessionsNumberManager.clear();
  void clearAllSessionsNumberCacheKey(String? uniqueKey) =>
      _allSessionsNumberManager.clearRequest(uniqueKey);
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
