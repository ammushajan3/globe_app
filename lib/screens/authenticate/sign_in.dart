import 'package:flutter/material.dart';
import 'package:task_app/core/services/auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleScreen;
  SignIn({
    this.toggleScreen,
  });
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Sign In'),
        actions: [
          FlatButton(
              onPressed: () {
                widget.toggleScreen();
              },
              child: Text('Register'))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  onChanged: (val) {
                    setState(
                      () {
                        email = val;
                      },
                    );
                  },
                ),
                TextFormField(
                  obscureText: true,
                  onChanged: (val) {
                    setState(
                      () {
                        password = val;
                      },
                    );
                  },
                ),
                RaisedButton(
                  onPressed: () async {
                    dynamic result = _auth.signInEmailPassword(email, password);
                    if (result == null) {
                      setState(() {
                        error = 'Couldnt Sign in';
                      });
                    }
                  },
                  child: Text('Sign in'),
                ),
                Text(error),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
