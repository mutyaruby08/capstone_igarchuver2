import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:igarchu/constants.dart';
// import 'package:h3f_wedding_planner/constants.dart';

class Upside extends StatelessWidget {
  const Upside({Key? key, required this.imgUrl}) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: 210.0,
          height: 200.0,
          color: kPrimaryLightColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Image.asset(
              imgUrl,
              alignment: Alignment.topCenter,
              scale: 1,
            ),
          ),
        ),
      ],
    );
  }
}