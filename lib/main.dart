import 'package:flutter/material.dart';
import 'package:e_commerce_app/homepage.dart/dashboard.dart';
import 'package:e_commerce_app/logins.dart/signin.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}