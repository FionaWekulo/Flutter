import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:flutterapp/views/login_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      home: LoginView(),
    ),
  );
}

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
      appBar: AppBar(title: const Text('Register')),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return Column(
                children: [
                  TextField(
                    controller: _email, //hooked controller to text field
                    enableSuggestions: true,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: "Enter your email address"),
                  ),
                  TextField(
                    controller: _password,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration:
                        const InputDecoration(hintText: "Enter your password"),
                  ),
                  TextButton(
                    onPressed: () async {
                      final email = _email.text; //grabbing th data entered
                      final password = _password.text;
                      try {
                        final userCredential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password);
                        print(userCredential);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == "email-already-in-use") {
                          print("Email already in use");
                        } else if (e.code == 'weak-password') {
                          print("Weak password!");
                          print("Password shoud be at least 6 characters");
                        } else if (e.code == "invalid-email"){
                              print("The email you entered is invalid");
                        }
                      }
                    },
                    child: const Text('Register'),
                  ),
                ],
              );
            default:
              return const Text("Loading....");
          }
        },
      ),
    );
  }
}
