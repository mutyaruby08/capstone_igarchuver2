// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pwidgets.dart/custom_button.dart';
import '../pwidgets.dart/custom_fndmtch_btn.dart';
import '../pwidgets.dart/custom_radiobutton.dart';

class Question10 extends StatefulWidget {
  final TabController tabController;

  const Question10({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Question10> createState() => _Question10State();
}

class _Question10State extends State<Question10> {
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
              Text('Are you allergic to fur or feathers?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 20),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Fur',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'A',
                text: 'I’m allergic to fur',
                fontSize: 20,
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Feathers',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'B',
                text: 'I’m allergic to feathers',
                fontSize: 20,
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Both',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'C',
                text: 'I’m not allergic to both',
                fontSize: 20,
              ),
            ],
          ),
          CustomFindMatchButton(
            tabController: widget.tabController,
            text: 'Find your pet match!',
          ),
        ],
      ),
    );
  }
}
