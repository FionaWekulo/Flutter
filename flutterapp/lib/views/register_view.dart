import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/extensions/buildcontext/loc.dart';
import 'package:flutterapp/services/auth/auth_exceptions.dart';
import 'package:flutterapp/services/auth/bloc/auth_bloc.dart';
import 'package:flutterapp/services/auth/bloc/auth_event.dart';
import 'package:flutterapp/services/auth/bloc/auth_state.dart';
import 'package:flutterapp/utilities/dialogs/error_dialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
  class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}