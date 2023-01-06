import 'package:flutter/material.dart';
import '../../../constants.dart';

class CustomCheckbox extends StatefulWidget {
  final TabController tabController;
  final String text;
  final String nValue;
  final double fontSized;
  final double sizeBox;

  const CustomCheckbox({
    Key? key,
    required this.tabController,
    required this.text,
    required this.nValue,
    this.fontSized = 22, this.sizeBox = 20,
  }) : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: [
            Checkbox(
                value: checkBoxValue,
                checkColor: Colors.white,
                activeColor: kBackground2,
                onChanged: (newValue) {
                  setState(() {
                    checkBoxValue = newValue!;
                  });
                  // print('check');
                }),
            SizedBox(height: widget.sizeBox)
          ],
        ),
        Text(
          widget.text,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontSize: widget.fontSized),
        )
      ],
    );
  }
}
