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
        return ios;
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
    apiKey: 'AIzaSyC-dUUBF_2WJ9zmwQXx8N8yqZHFtiYUA7c',
    appId: '1:541600836484:web:cbaf1cce72bdcb34334bd1',
    messagingSenderId: '541600836484',
    projectId: 'spotify-4e41c',
    authDomain: 'spotify-4e41c.firebaseapp.com',
    storageBucket: 'spotify-4e41c.appspot.com',
    measurementId: 'G-EY9TEZCW02',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC93XFJuN6GHiu7NcmWlE3Tt_KrPmrin1U',
    appId: '1:541600836484:android:d1e42cec1c571945334bd1',
    messagingSenderId: '541600836484',
    projectId: 'spotify-4e41c',
    storageBucket: 'spotify-4e41c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjv_3Mm-d8F5P7PhGKKGEx3Of5tdgKQyk',
    appId: '1:541600836484:ios:40e7775ab39b30dd334bd1',
    messagingSenderId: '541600836484',
    projectId: 'spotify-4e41c',
    storageBucket: 'spotify-4e41c.appspot.com',
    iosBundleId: 'com.example.spotify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjv_3Mm-d8F5P7PhGKKGEx3Of5tdgKQyk',
    appId: '1:541600836484:ios:40e7775ab39b30dd334bd1',
    messagingSenderId: '541600836484',
    projectId: 'spotify-4e41c',
    storageBucket: 'spotify-4e41c.appspot.com',
    iosBundleId: 'com.example.spotify',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC-dUUBF_2WJ9zmwQXx8N8yqZHFtiYUA7c',
    appId: '1:541600836484:web:71352ce7082b9dae334bd1',
    messagingSenderId: '541600836484',
    projectId: 'spotify-4e41c',
    authDomain: 'spotify-4e41c.firebaseapp.com',
    storageBucket: 'spotify-4e41c.appspot.com',
    measurementId: 'G-JVVWM4TKBP',
  );
}
