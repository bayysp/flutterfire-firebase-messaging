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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
    appId: '1:448618578101:web:0b650370bb29e29cac3efc',
    messagingSenderId: '448618578101',
    projectId: 'react-native-firebase-testing',
    authDomain: 'react-native-firebase-testing.firebaseapp.com',
    databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
    storageBucket: 'react-native-firebase-testing.appspot.com',
    measurementId: 'G-F79DJ0VFGS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCuu4tbv9CwwTudNOweMNstzZHIDBhgJxA',
    appId: '1:448618578101:android:5180baaa9cc2b8fcac3efc',
    messagingSenderId: '448618578101',
    projectId: 'react-native-firebase-testing',
    databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
    storageBucket: 'react-native-firebase-testing.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHAsf51D0A407EklG1bs-5wA7EbyfNFg0',
    appId: '1:448618578101:ios:9847ca0fdc2a4ee7ac3efc',
    messagingSenderId: '448618578101',
    projectId: 'react-native-firebase-testing',
    databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
    storageBucket: 'react-native-firebase-testing.appspot.com',
    androidClientId: '448618578101-29lqo5a1alrq4uplsf9bl92jb84j1ee6.apps.googleusercontent.com',
    iosClientId: '448618578101-mcfaooqa343utlqtd0rbsnhcpqc0r17h.apps.googleusercontent.com',
    iosBundleId: 'io.flutter.plugins.flutterfireui.flutterfireUIExample',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAHAsf51D0A407EklG1bs-5wA7EbyfNFg0',
    appId: '1:448618578101:ios:9847ca0fdc2a4ee7ac3efc',
    messagingSenderId: '448618578101',
    projectId: 'react-native-firebase-testing',
    databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
    storageBucket: 'react-native-firebase-testing.appspot.com',
    androidClientId: '448618578101-29lqo5a1alrq4uplsf9bl92jb84j1ee6.apps.googleusercontent.com',
    iosClientId: '448618578101-mcfaooqa343utlqtd0rbsnhcpqc0r17h.apps.googleusercontent.com',
    iosBundleId: 'io.flutter.plugins.flutterfireui.flutterfireUIExample',
  );
}