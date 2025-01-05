import 'package:flutter/material.dart';
import 'package:minimal_chat_application/components/my_button.dart';
import 'package:minimal_chat_application/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  //Email and Password text Controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  //Login method
  void login() {}

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.message,
                size: 60,
                color: colorScheme.primary,
              ),
              //welcome message
              SizedBox(
                height: 5,
              ),
              Text(
                'Welcome to chat!',
                style: TextStyle(
                  fontSize: 16,
                  color: colorScheme.primary,
                ),
              ),
              //email text field
              SizedBox(
                height: 55,
              ),
              MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: emailController,
              ),
              //password text field
              SizedBox(
                height: 10,
              ),
              MyTextField(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
              ),

              //login button
              SizedBox(
                height: 20,
              ),
              MyButton(
                text: "Login",
                fontWeight: FontWeight.w400,
                onTap: login,
              ),
              //register
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member? "),
                  InkWell(
                    child: Text(
                      "Register now",
                      style: TextStyle(color: colorScheme.onPrimary,fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: colorScheme.surface,
    );
  }
}
