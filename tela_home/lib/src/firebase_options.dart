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
        return macos;
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
    apiKey: 'AIzaSyDMV71gRLZ9RfdJoMS3FX-2THmwiHgHaYM',
    appId: '1:480379448239:web:d50f6d25f8d9f37de09d5a',
    messagingSenderId: '480379448239',
    projectId: 'pdm-2023-41a73',
    authDomain: 'pdm-2023-41a73.firebaseapp.com',
    storageBucket: 'pdm-2023-41a73.appspot.com',
    measurementId: 'G-WJ3QPQ6Q43',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAALtAKGHctjeY_ZJlAZNqYx4QYmeBKbso',
    appId: '1:480379448239:android:350519c48267eac9e09d5a',
    messagingSenderId: '480379448239',
    projectId: 'pdm-2023-41a73',
    storageBucket: 'pdm-2023-41a73.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0GK4FzvrXzfGqn5Jl6p7swvVZMu9ABsQ',
    appId: '1:480379448239:ios:ed0a6cbe8f231939e09d5a',
    messagingSenderId: '480379448239',
    projectId: 'pdm-2023-41a73',
    storageBucket: 'pdm-2023-41a73.appspot.com',
    iosClientId: '480379448239-eleukru3qm3fk1g8q3tnqb11bbkn5j8b.apps.googleusercontent.com',
    iosBundleId: 'com.example.telaInicial',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC0GK4FzvrXzfGqn5Jl6p7swvVZMu9ABsQ',
    appId: '1:480379448239:ios:ed0a6cbe8f231939e09d5a',
    messagingSenderId: '480379448239',
    projectId: 'pdm-2023-41a73',
    storageBucket: 'pdm-2023-41a73.appspot.com',
    iosClientId: '480379448239-eleukru3qm3fk1g8q3tnqb11bbkn5j8b.apps.googleusercontent.com',
    iosBundleId: 'com.example.telaInicial',
  );
}
