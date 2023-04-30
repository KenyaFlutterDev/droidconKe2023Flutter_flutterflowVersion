import 'package:firebase_remote_config/firebase_remote_config.dart';

Future initializeFirebaseRemoteConfig() async {
  await FirebaseRemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(hours: 1),
  ));
  await FirebaseRemoteConfig.instance.setDefaults(const {
    'APITOKEN': 'TESTaPITOKEN',
  });
  await FirebaseRemoteConfig.instance.fetchAndActivate();
}

String getRemoteConfigString(String key) =>
    FirebaseRemoteConfig.instance.getString(key);

bool getRemoteConfigBool(String key) =>
    FirebaseRemoteConfig.instance.getBool(key);

int getRemoteConfigInt(String key) => FirebaseRemoteConfig.instance.getInt(key);

double getRemoteConfigDouble(String key) =>
    FirebaseRemoteConfig.instance.getDouble(key);
