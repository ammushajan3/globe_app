import 'package:flutter/material.dart';
import 'package:task_app/core/services/auth.dart';
import 'package:task_app/resources/images.dart';
import 'package:task_app/themes/color.dart';

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
      backgroundColor: AppColors.COLOR_WARM_BLUE,
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
        child: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                Image(image: AssetImage(Images.GLOBE_LOGO)),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                  onChanged: (val) {
                    setState(
                      () {
                        email = val;
                      },
                    );
                  },
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: 'Password'
                  ),
                  obscureText: true,
                  onChanged: (val) {
                    setState(
                      () {
                        password = val;
                      },
                    );
                  },
                ),
                SizedBox(height: 10),
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
