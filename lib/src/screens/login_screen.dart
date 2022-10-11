import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 20.0),
          ),
          submitButton()
        ],
      ),
    );
  }
}

Widget emailField() {
  return StreamBuilder(
    stream: bloc.email,
    builder: (context, snapshot) {
      return TextFormField(
        onChanged: bloc.changeEmail,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'you@example.com',
          labelText: 'Email Address',
          errorText: snapshot.error?.toString(),
        ),
      );
    },
  );
}

Widget passwordField() {
  return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot) {
      return TextFormField(
        onChanged: bloc.changePassword,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'password',
            labelText: 'Password',
            errorText: snapshot.error?.toString()),
      );
    },
  );
}

Widget submitButton() {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      'Login',
      style: TextStyle(color: Colors.white),
    ),
  );
}
