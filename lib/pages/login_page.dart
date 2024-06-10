import 'package:flutter/material.dart';
import 'package:socialmedia_flutter/components/my_button.dart';
import 'package:socialmedia_flutter/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final void Function()? onTap;
  // text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key, this.onTap});

  // login method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.person,
                size: 120,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(
                height: 25,
              ),

              // app name
              const Text(
                'Social Media',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(
                height: 50,
              ),

              // email textfield
              MyTextfield(
                  hintText: 'Email',
                  obscureText: false,
                  controller: emailController),

              const SizedBox(
                height: 10,
              ),

              // password textfield
              MyTextfield(
                  hintText: 'Password',
                  obscureText: true,
                  controller: passwordController),

              const SizedBox(
                height: 10,
              ),

              // forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Olvidé mi contraseña',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),

              // sign in button
              MyButton(
                text: "Iniciar Sesión",
                onTap: login,
              ),

              const SizedBox(
                height: 25,
              ),

              // don't have an account? Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('¿No tienes Cuenta?',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary)),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      'Registrate aquí',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
