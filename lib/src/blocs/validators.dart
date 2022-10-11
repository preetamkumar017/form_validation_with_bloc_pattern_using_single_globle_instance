import 'dart:async';

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.toString().contains('@')) {
      sink.add(email);
    } else {
      sink.addError("Enter a valid email");
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.toString().length > 3) {
      sink.add(password);
    } else {
      sink.addError("Enter a valid password");
    }
  });
}
