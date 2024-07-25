import 'package:flutter/material.dart';
import 'package:vibe_chat_app/pages/chatpage.dart';
import 'package:vibe_chat_app/pages/home.dart';
import 'package:vibe_chat_app/pages/signin.dart';
import 'package:vibe_chat_app/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignIn(),// ChatPage(),//Home(),//SignUp(), //SignIn(),
    );
  }
}