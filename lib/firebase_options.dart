// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBqe5U4ZZF_BjEY2GlzQyORhl07EybgZmU',
    appId: '1:546874047247:web:20939db5a67e8d7b5adc7a',
    messagingSenderId: '546874047247',
    projectId: 'meditationapp-a509e',
    authDomain: 'meditationapp-a509e.firebaseapp.com',
    storageBucket: 'meditationapp-a509e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSzdaQhExYZaqWDR5U9EsQ3xeaPnI626o',
    appId: '1:546874047247:android:dd17b4988458cae75adc7a',
    messagingSenderId: '546874047247',
    projectId: 'meditationapp-a509e',
    storageBucket: 'meditationapp-a509e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKCr8aOrtEwDOtfkYAgVmoWAlhH_BdYWI',
    appId: '1:546874047247:ios:0eb80841e5167f605adc7a',
    messagingSenderId: '546874047247',
    projectId: 'meditationapp-a509e',
    storageBucket: 'meditationapp-a509e.appspot.com',
    iosClientId: '546874047247-1la94c4at6uq73pb6tcek4cps2p59cej.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAuth',
  );
}
