import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCuyAh1xA9E3MiFaoC8nGDbpM0O_bDT5x8",
      authDomain: "flutterrrr-9e29d.firebaseapp.com",
      projectId: "flutterrrr-9e29d",
      storageBucket: "flutterrrr-9e29d.firebasestorage.app",
      messagingSenderId: "79092433557",
      appId: "1:79092433557:web:6aba40ef7f39e59a95119c",
      measurementId: "G-GN1Z7LXP7S",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Round2Meal",
      home: HomePage(),
    );
  }
}
