import 'package:flutter/material.dart';
import 'package:igarchu/screens/authenticate/authenticate.dart';
import 'package:igarchu/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}
