// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pwidgets.dart/custom_button.dart';
import '../pwidgets.dart/custom_radiobutton.dart';

class Question09 extends StatefulWidget {
  final TabController tabController;

  const Question09({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Question09> createState() => _Question09State();
}

class _Question09State extends State<Question09> {
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
              Text('Have you ever owned a pet before?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 20),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'FirstPet',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'A',
                text: 'No, this will be my first\ntime',
                fontSize: 19,
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'HaveCurrentPets',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'B',
                text: 'I currently have other\npets right now',
                fontSize: 19,
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'YesBefore',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'C',
                text: 'Yes, I owned a pet\nbefore',
                fontSize: 19,
              ),
            ],
          ),
          CustomButton(tabController: widget.tabController),
        ],
      ),
    );
  }
}
