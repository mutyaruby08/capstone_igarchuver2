// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pwidgets.dart/custom_button.dart';
import '../pwidgets.dart/custom_radiobutton.dart';

class Question05 extends StatefulWidget {
  final TabController tabController;

  const Question05({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Question05> createState() => _Question05State();
}

class _Question05State extends State<Question05> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: 20),
              Text('What’s your home like?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 20),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'SmallSpace',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'A',
                text: 'Enough space for a small\nsized petto roam around',
                fontSize: 18,
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'BigSpace',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'B',
                text: 'I have plenty of space in\nmy house and backyards',
                fontSize: 18,
              ),
              // CustomCheckbox(tabController: widget.tabController, text: 'Enough space for a small sized pet to roam around'),
              // CustomCheckbox(tabController: widget.tabController, text: 'I have plenty of space in my house and backyard'),
            ],
          ),
          CustomButton(tabController: widget.tabController),
        ],
      ),
    );
  }
}
