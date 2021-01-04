import 'package:flutter/material.dart';
import 'package:task_app/core/services/auth.dart';
class Register extends StatefulWidget {
  final Function toggleScreen;
  Register({
    this.toggleScreen,
  });
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  String email ='';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Register'),
        actions: [
          FlatButton(onPressed: (){ widget.toggleScreen();}, child: Text('Sign In'))
        ],
      ),
      body: Center(
        child: Form(child: Column(
          children: [
            TextFormField(
              onChanged: (val)
              {
                setState(() {
                  email=val;
                },);
              },
            ),
            TextFormField(
              obscureText: true,
              onChanged: (val)
              {
                setState(() {
                  password=val;
                },);
              },
            ),
            RaisedButton(onPressed: () async {
                 dynamic result = await _auth.registerEmailPassword(email, password);
                 if(result == null)
                   {
                     setState(() {
                       error = 'please provide a valid email';
                     });
                   }
            },
              child: Text('Register'),),
            Text(error),

          ],
        ),),
      ),
    );
  }
}
