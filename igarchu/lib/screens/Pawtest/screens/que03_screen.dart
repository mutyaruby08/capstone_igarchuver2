// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pwidgets.dart/custom_button.dart';
import '../pwidgets.dart/custom_radiobutton.dart';

class Question03 extends StatefulWidget {
  final TabController tabController;

  const Question03({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Question03> createState() => _Question03State();
}

class _Question03State extends State<Question03> {
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
              Text('What would be its size?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 20),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Mini',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'A',
                text: 'Mini',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Small',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'B',
                text: 'Small',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Medium',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'C',
                text: 'Medium',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Large',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'D',
                text: 'Large',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'DoNotMatter',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'E',
                text: 'Doesn’t Matter',
              ),

              // CustomCheckbox(tabController: tabController, text: 'Mini'),
              // CustomCheckbox(tabController: tabController, text: 'Small'),
              // CustomCheckbox(tabController: tabController, text: 'Medium'),
              // CustomCheckbox(tabController: tabController, text: 'Large'),
              // CustomCheckbox(
              //     tabController: tabController, text: 'Doesnt Matter'),
            ],
          ),
          CustomButton(tabController: widget.tabController),
        ],
      ),
    );
  }
}
