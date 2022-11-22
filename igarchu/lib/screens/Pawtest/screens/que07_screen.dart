// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pwidgets.dart/custom_button.dart';
import '../pwidgets.dart/custom_radiobutton.dart';

class Question07 extends StatefulWidget {
  final TabController tabController;

  const Question07({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Question07> createState() => _Question07State();
}

class _Question07State extends State<Question07> {
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
              Text('What is your pet-age preference?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 20),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Junior',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'A',
                text: 'Junior',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Adult',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'B',
                text: 'Adult',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Mature',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'D',
                text: 'Mature',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Senior',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'E',
                text: 'Senior',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'DoNotMatter',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'F',
                text: 'Doesn’t Matter',
              ),
            ],
          ),
          CustomButton(tabController: widget.tabController),
        ],
      ),
    );
  }
}
