// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pwidgets.dart/custom_button.dart';
import '../pwidgets.dart/custom_radiobutton.dart';


class Question02 extends StatefulWidget {
  final TabController tabController;

  const Question02({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Question02> createState() => _Question02State();
}

class _Question02State extends State<Question02> {
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
              Text('What would be its color?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 20),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Light',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'A',
                text: 'Light',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Dark',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'B',
                text: 'Dark',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Bi-color',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'C',
                text: 'Bi-color',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Tri-color',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'D',
                text: 'Tri-color',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'DoNotMatter',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'E',
                text: 'Doesn’t Matter',
              ),
              // CustomCheckbox(tabController: widget.tabController, text: 'Light'),
              // CustomCheckbox(tabController: widget.tabController, text: 'Dark'),
              // CustomCheckbox(tabController: widget.tabController, text: 'Tri-color'),
              // CustomCheckbox(
              //     tabController: widget.tabController, text: 'Doesnt Matter'),
            ],
          ),
          CustomButton(tabController: widget.tabController),
        ],
      ),
    );
  }
}
