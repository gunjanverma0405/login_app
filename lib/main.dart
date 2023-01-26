import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_app/firebase_options.dart';
import 'package:login_app/screens/login_email_password_screen.dart';
import 'package:login_app/screens/login_screen.dart';
import 'package:login_app/screens/phone_screen.dart';
import 'package:login_app/screens/signup_email_password_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
        "/emailpasswordsignup": (context) => const EmailPasswordSignup(),
        "/emailpasswordlogin": (context) => const EmailPasswordLogin(),
        "/phonescreen": (context) => const PhoneScreen(),
      },
    );
  }
}
// for sha in terminal
// keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android