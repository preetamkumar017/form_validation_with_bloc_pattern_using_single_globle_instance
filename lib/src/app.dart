import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Log me In",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Log In Screen"),
          centerTitle: true,
        ),
        body: LoginScreen(),
      ),
    );
  }
}
