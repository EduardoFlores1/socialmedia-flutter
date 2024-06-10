import 'package:flutter/material.dart';
import 'package:socialmedia_flutter/pages/login_page.dart';
import 'package:socialmedia_flutter/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LogiOrRegisterState();
}

class _LogiOrRegisterState extends State<LoginOrRegister> {
  // inialmente se muestra el login
  bool showLoginPage = true;

  // alternar entre login y register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}
