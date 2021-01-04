import 'package:flutter/material.dart';
import 'package:task_app/screens/authenticate/register.dart';
import 'package:task_app/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool signIn = true;
  void toggleViews()
  {
    setState(() {
      signIn = ! signIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(signIn)
      {
        return SignIn(toggleScreen:toggleViews);
      }
    else
      {
        return Register(toggleScreen:toggleViews);
      }
  }
}
