// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pwidgets.dart/custom_button.dart';
import '../pwidgets.dart/custom_radiobutton.dart';

class Question01 extends StatefulWidget {
  final TabController tabController;

  const Question01({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Question01> createState() => _Question01State();
}

class _Question01State extends State<Question01> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    //diring gi comment ba, if e print ang value sa console kay mo 
    //print jud ang kung unsay valueee, so nice. magamit jud para match
    // String? value = '';
    // _groupValue = value;
    // return (value) => setState(() => print('${value}'));

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
              Text('What type of pet do you prefer?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 20),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Dog',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'A',
                text: 'Dog',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Cat',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'B',
                text: 'Cat',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Bird',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'C',
                text: 'Bird',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'Rabbit',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'D',
                text: 'Rabbit',
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'DoNotMatter',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'E',
                text: 'Doesn’t Matter',
              ),
              // CustomCheckbox(tabController: tabController, text: 'Dog'),
              // CustomCheckbox(tabController: tabController, text: 'Cat'),
              // CustomCheckbox(tabController: tabController, text: 'Bird'),
              // CustomCheckbox(tabController: tabController, text: 'Rabbit'),
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
