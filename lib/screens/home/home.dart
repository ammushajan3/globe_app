import 'package:flutter/material.dart';
import 'package:task_app/core/services/auth.dart';
class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('log out'),
          onPressed: () async{
            await _auth.signOut();
          },
        ),
      ),
    );
  }
}
