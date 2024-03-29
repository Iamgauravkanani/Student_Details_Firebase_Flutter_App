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
    apiKey: 'AIzaSyDGRD7l5XJ-5uB1biPWVo0Clk_w0-0GoK8',
    appId: '1:83256300246:web:6a5e40e235958be00faf77',
    messagingSenderId: '83256300246',
    projectId: 'chat-app-7be35',
    authDomain: 'chat-app-7be35.firebaseapp.com',
    storageBucket: 'chat-app-7be35.appspot.com',
    measurementId: 'G-BY8215S9TZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfLdS9XNte7uTlxUZ3qjal5sQ2k4sHp00',
    appId: '1:83256300246:android:1a90649b5b4c7d430faf77',
    messagingSenderId: '83256300246',
    projectId: 'chat-app-7be35',
    storageBucket: 'chat-app-7be35.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhAcHsg9F6hWSu59krtPSj3DIIXiXUtyY',
    appId: '1:83256300246:ios:3257d5ef942479c80faf77',
    messagingSenderId: '83256300246',
    projectId: 'chat-app-7be35',
    storageBucket: 'chat-app-7be35.appspot.com',
    androidClientId: '83256300246-gqukn6bt8f95vll4e43p5qi8e96a5c71.apps.googleusercontent.com',
    iosClientId: '83256300246-9ltvkhr5vbrckfhgvgu3oluvh6e7no3d.apps.googleusercontent.com',
    iosBundleId: 'com.example.studentDataFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBhAcHsg9F6hWSu59krtPSj3DIIXiXUtyY',
    appId: '1:83256300246:ios:e852022de9e40ab60faf77',
    messagingSenderId: '83256300246',
    projectId: 'chat-app-7be35',
    storageBucket: 'chat-app-7be35.appspot.com',
    androidClientId: '83256300246-gqukn6bt8f95vll4e43p5qi8e96a5c71.apps.googleusercontent.com',
    iosClientId: '83256300246-7rnjb44elc8268djfrkcgc7vgbqg4297.apps.googleusercontent.com',
    iosBundleId: 'com.example.studentDataFirebase.RunnerTests',
  );
}
