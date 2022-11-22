import 'package:flutter/material.dart';


class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({Key? key, 
  this.child, 
  required this.textfieldSize,

  }) : super(key: key);

  final Widget? child;
  final double textfieldSize;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      width: textfieldSize,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(238, 238, 228, 1),
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}