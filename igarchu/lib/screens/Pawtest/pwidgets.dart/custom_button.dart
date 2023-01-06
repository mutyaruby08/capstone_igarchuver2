// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomButton extends StatelessWidget {
  final TabController tabController;
  final String text;
  const CustomButton(
      {Key? key, required this.tabController, this.text = 'Next Step'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.0),
          gradient: LinearGradient(colors: [
            kPrimaryColor,
            kbutton2,
          ])),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0, primary: Colors.transparent),
          onPressed: () {
            tabController.animateTo(tabController.index + 1);
          },
          child: Container(
              width: double.infinity,
              child: Center(
                  child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ))),
        ),
      ),
    );
  }
}
