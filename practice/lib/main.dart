import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:practice/firebase_options.dart';
import 'package:practice/screen/home_view.dart';
import 'package:practice/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:practice/screen/register.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}