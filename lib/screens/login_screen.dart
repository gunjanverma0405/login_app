import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_app/screens/login_email_password_screen.dart';
import 'package:login_app/services/firebase_auth_methods.dart';
import 'package:login_app/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, "/emailpasswordsignup");
              },
              text: 'Email/Password Signup',
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, "/emailpasswordlogin");
              },
              text: 'Email/Password Login',
            ),
            CustomButton(
              onTap: () {
                FirebaseAuthMethods.signInWithGoogle(context: context);
              },
              text: 'Google Sign In',
            ),
          ],
        ),
      ),
    );
  }
}
