import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/core/models/user_model.dart';
import 'package:task_app/screens/authenticate/authenticate.dart';
import 'package:task_app/screens/home/home.dart';
import 'package:task_app/widgets/globe_app.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if(user == null)
      {
        return Authenticate();
      }
    else
      {
        return Dashboard();
      }
  }
}
