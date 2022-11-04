import 'package:flutter/material.dart';
import 'package:igarchu/model/user.dart';
import 'package:igarchu/screens/authenticate/authenticate.dart';
import 'package:igarchu/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return HomePage();
    }
  }
}
