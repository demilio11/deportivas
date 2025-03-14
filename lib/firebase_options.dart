// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyD_9m6pQyU26HSwKvnLH09_P3VcbRv63gs',
    appId: '1:805991253367:web:6eab36e6dbddef222c0d72',
    messagingSenderId: '805991253367',
    projectId: 'deporscraping',
    authDomain: 'deporscraping.firebaseapp.com',
    databaseURL: 'https://deporscraping-default-rtdb.firebaseio.com',
    storageBucket: 'deporscraping.firebasestorage.app',
    measurementId: 'G-J3B7DYKP3P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfhBt_IznBU65tUpmh5NzjjX77WP6dXkA',
    appId: '1:805991253367:android:38bd90f054665e6d2c0d72',
    messagingSenderId: '805991253367',
    projectId: 'deporscraping',
    databaseURL: 'https://deporscraping-default-rtdb.firebaseio.com',
    storageBucket: 'deporscraping.firebasestorage.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKYEShwZrrw2A4n4B6C6KwUIlTf51FarA',
    appId: '1:805991253367:ios:f24bc84f91cb1adc2c0d72',
    messagingSenderId: '805991253367',
    projectId: 'deporscraping',
    databaseURL: 'https://deporscraping-default-rtdb.firebaseio.com',
    storageBucket: 'deporscraping.firebasestorage.app',
    iosBundleId: 'com.example.deportivas',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD_9m6pQyU26HSwKvnLH09_P3VcbRv63gs',
    appId: '1:805991253367:web:bd153fb353ad645e2c0d72',
    messagingSenderId: '805991253367',
    projectId: 'deporscraping',
    authDomain: 'deporscraping.firebaseapp.com',
    databaseURL: 'https://deporscraping-default-rtdb.firebaseio.com',
    storageBucket: 'deporscraping.firebasestorage.app',
    measurementId: 'G-DRMW2DQS2E',
  );
}
