// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars

// Package imports:
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA8vUJ-GRW9vAaSa68c3rDabtO9U6fPOCc',
    appId: '1:1000394936344:web:b4c5299b729443d480736d',
    messagingSenderId: '1000394936344',
    projectId: 'cupertino-icons',
    authDomain: 'cupertino-icons.firebaseapp.com',
    storageBucket: 'cupertino-icons.appspot.com',
    measurementId: 'G-SL4Y2BHEXT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBarAI4NKBFAmUqdtykBZB7OT4J-7yQ2nQ',
    appId: '1:1000394936344:android:5250cfab56e9a3eb80736d',
    messagingSenderId: '1000394936344',
    projectId: 'cupertino-icons',
    storageBucket: 'cupertino-icons.appspot.com',
  );
}