import 'package:flutter/material.dart';
import 'package:minimal_chat_application/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                color: Theme.of(context).colorScheme.primary,
              ),
              //welcome message
              SizedBox(
                height: 5,
              ),
              Text(
                'Welcome to chat!',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              //email text field
              SizedBox(
                height: 55,
              ),
              MyTextField(),
              //password text field
              SizedBox(
                height: 10,
              ),
              MyTextField(),
          
              //login button
          
              //register
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}
