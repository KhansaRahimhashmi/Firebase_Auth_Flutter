import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'package:signup_login/pages/home_page.dart';
import 'package:signup_login/pages/login_page.dart';
import 'package:signup_login/pages/sign_up_page.dart';
import 'package:signup_login/splash_screen/splashscreen.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyAV8qf3uPBIafnZZPe9QiLBkacS4OasTWc",
  authDomain: "signup-login-71184.firebaseapp.com",
  projectId: "signup-login-71184",
  storageBucket: "signup-login-71184.appspot.com",
  messagingSenderId: "422383083447",
  appId: "1:422383083447:web:617746f11daacf8b2bd232",
  measurementId: "G-YW8KY1ML7W"
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Log in';

    return MaterialApp(
      title: title,
      routes: {
        '/': (context) => SplashScreen(
          child: LoginPage(),
        ),
        '/login': (context) => LoginPage(), // Add this route for login
        '/signUp': (context) => SignUpPage(), // Add this route for sign up
        '/home': (context) => HomePage(), // Add this route for home
      },
    );
  }
}
