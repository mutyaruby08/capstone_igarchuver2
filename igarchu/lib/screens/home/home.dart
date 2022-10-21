import 'package:flutter/material.dart';
import 'package:igarchu/services/auth.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('iGarchu'),
        backgroundColor: Colors.amber[400],
        elevation: 0.0,
        actions: <Widget>[
          TextButton(
              onPressed: () async {
                await _auth.signOut();
              },
              child: Text('Logout')),
        ],
      ),
    );
  }
}
