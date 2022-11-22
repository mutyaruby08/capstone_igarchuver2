// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pwidgets.dart/custom_button.dart';
import '../pwidgets.dart/custom_radiobutton.dart';


class Question08 extends StatefulWidget {
  final TabController tabController;

  const Question08({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Question08> createState() => _Question08State();
}

class _Question08State extends State<Question08> {
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
              Text('How much time do you spend at home?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 20),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Less4hrs',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'A',
                text: 'Less than four hours',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: '4-10hrs',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'B',
                text: '4 - 10 hours',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: '10-16hrs',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'C',
                text: '10 - 16 hours ',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'More16hrs',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'D',
                text: 'More than 16 hours',
              ),
            ],
          ),
          CustomButton(tabController: widget.tabController),
        ],
      ),
    );
  }
}
