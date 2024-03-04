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
    apiKey: 'AIzaSyDaRjZJ8L8rkXmsbExQK3pI0qWFhTlmXrQ',
    appId: '1:498272505603:web:0e5e866990a5729b1ce336',
    messagingSenderId: '498272505603',
    projectId: 'zeedra-714e6',
    authDomain: 'zeedra-714e6.firebaseapp.com',
    storageBucket: 'zeedra-714e6.appspot.com',
    measurementId: 'G-5G2N4LYR33',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAr0UrZTqXp7mMsU9kPThJw8-j0CqGmYBc',
    appId: '1:498272505603:android:a559b7a9167e88551ce336',
    messagingSenderId: '498272505603',
    projectId: 'zeedra-714e6',
    storageBucket: 'zeedra-714e6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXRxQJSnQlGjJuhhB2KyGzxl1B8bwQruo',
    appId: '1:498272505603:ios:55321b74c9b8d93d1ce336',
    messagingSenderId: '498272505603',
    projectId: 'zeedra-714e6',
    storageBucket: 'zeedra-714e6.appspot.com',
    iosBundleId: 'com.example.zeedraEcom',
  );
}