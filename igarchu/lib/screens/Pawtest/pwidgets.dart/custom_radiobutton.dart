// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../constants.dart';

class CustomRadioButton<T> extends StatelessWidget {
  final TabController tabController;
  final String text;
  final bool item;
  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;
  final String label;
  final double fontSize;

  const CustomRadioButton({
    Key? key,
    required this.tabController,
    required this.text,
    this.item = false,
    required this.value,
    this.groupValue,
    required this.onChanged,
    required this.label,
    this.fontSize = 22,
  }) : super(key: key);

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 35,
      height: 35,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.black,
          ),
        ),
        color: isSelected ? kBackground2 : Colors.white,
      ),
      child: Center(
        child: Text(
          label.toString(),
          style: TextStyle(
            color: isSelected ? Colors.white : kBackground2,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  // Widget _buildText() {
  //   return Text(
  //     text,
  //     style: const TextStyle(color: Colors.black, fontSize: 15),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: kbutton2.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              _buildLabel(),
              const SizedBox(width: 10),
              // _buildText(),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontSize: fontSize),
              )
            ],
          ),
        ),
      ),
    );
  }
}
