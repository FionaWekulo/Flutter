import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer' as devtools show log;

import 'package:flutterapp/constants/routes.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email; //will give them later
  late final TextEditingController _password;

  @override
  void initState() {
    //PASS VALUES TO CONTROLLER
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    //REMOVE THE VALUES FROM CONTROLLER ONCE PASSED
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login")
      ),
      body: Column(
        children: [
          TextField(
            controller: _email, //hooked controller to text field
            enableSuggestions: true,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration:
                const InputDecoration(hintText: "Enter your email address"),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(hintText: "Enter your password"),
          ),
          TextButton(
            onPressed: () async {
              final email = _email.text; //grabbing th data entered
              final password = _password.text;
              Navigator.of(context).pushNamedAndRemoveUntil(
                  notesRoute,
                  (route) => false,
                );
              try {
             await FirebaseAuth.instance
                    .signInWithEmailAndPassword(email: email, password: password);
                
                    } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                  devtools.log('User not found');
                } else if (e.code == 'wrong-password') {
                  devtools.log("Wrong password");
                }
              }
              
            },
            child: const Text('Login'),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  registerRoute, (route) => false,);
              },
              child: const Text("Not registered yet? Register here!"))
        ],
      ),
    );
  }
}
