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
    apiKey: 'AIzaSyAJ2YvAw2skmgrvAw_7WwfHY6KS_RAv8IA',
    appId: '1:1026403211685:web:00093fc298b776e46eb04c',
    messagingSenderId: '1026403211685',
    projectId: 'trade-payment',
    authDomain: 'trade-payment.firebaseapp.com',
    storageBucket: 'trade-payment.appspot.com',
    measurementId: 'G-63RXHNDE8Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfMbX8DKwV6gSXpml7BLQ5-mSSS4Ow7N0',
    appId: '1:1026403211685:android:57e4e299821d7bbe6eb04c',
    messagingSenderId: '1026403211685',
    projectId: 'trade-payment',
    storageBucket: 'trade-payment.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAYx6I4v4kEAcr-dkrrDYVJZSM0dOwg9Nc',
    appId: '1:1026403211685:ios:06546a18340723246eb04c',
    messagingSenderId: '1026403211685',
    projectId: 'trade-payment',
    storageBucket: 'trade-payment.appspot.com',
    iosBundleId: 'com.example.eCommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAYx6I4v4kEAcr-dkrrDYVJZSM0dOwg9Nc',
    appId: '1:1026403211685:ios:06546a18340723246eb04c',
    messagingSenderId: '1026403211685',
    projectId: 'trade-payment',
    storageBucket: 'trade-payment.appspot.com',
    iosBundleId: 'com.example.eCommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAJ2YvAw2skmgrvAw_7WwfHY6KS_RAv8IA',
    appId: '1:1026403211685:web:3b861eee4a7de53a6eb04c',
    messagingSenderId: '1026403211685',
    projectId: 'trade-payment',
    authDomain: 'trade-payment.firebaseapp.com',
    storageBucket: 'trade-payment.appspot.com',
    measurementId: 'G-J0X0847WFB',
  );
}
