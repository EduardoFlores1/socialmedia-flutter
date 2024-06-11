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
    apiKey: 'AIzaSyAyBOE3MX1C6_DS7tcMbCV67kk5FJa5Bdc',
    appId: '1:215928581963:web:692e20952a9df33c4bc2ce',
    messagingSenderId: '215928581963',
    projectId: 'social-app-a7600',
    authDomain: 'social-app-a7600.firebaseapp.com',
    storageBucket: 'social-app-a7600.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjSnRHliXg4mQoCty02cOVMNGxWIJZa7w',
    appId: '1:215928581963:android:1620934debd126224bc2ce',
    messagingSenderId: '215928581963',
    projectId: 'social-app-a7600',
    storageBucket: 'social-app-a7600.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCv_0HXwK8r1BybsPuhh2Nh4VbBOqJsEcs',
    appId: '1:215928581963:ios:a9a1b9e0e8a1fac94bc2ce',
    messagingSenderId: '215928581963',
    projectId: 'social-app-a7600',
    storageBucket: 'social-app-a7600.appspot.com',
    iosBundleId: 'com.example.socialmediaFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCv_0HXwK8r1BybsPuhh2Nh4VbBOqJsEcs',
    appId: '1:215928581963:ios:a9a1b9e0e8a1fac94bc2ce',
    messagingSenderId: '215928581963',
    projectId: 'social-app-a7600',
    storageBucket: 'social-app-a7600.appspot.com',
    iosBundleId: 'com.example.socialmediaFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAyBOE3MX1C6_DS7tcMbCV67kk5FJa5Bdc',
    appId: '1:215928581963:web:eb50e3a29744e9cd4bc2ce',
    messagingSenderId: '215928581963',
    projectId: 'social-app-a7600',
    authDomain: 'social-app-a7600.firebaseapp.com',
    storageBucket: 'social-app-a7600.appspot.com',
  );
}