// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pwidgets.dart/custom_button.dart';
import '../pwidgets.dart/custom_radiobutton.dart';

class Question04 extends StatefulWidget {
  final TabController tabController;

  const Question04({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Question04> createState() => _Question04State();
}

class _Question04State extends State<Question04> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: 20),
              Text('How much cleaning are you willing to do?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 20),

              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'NeatFreak',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'A',
                text: 'I’m basically a neat freak',
                fontSize: 18,
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'OkayWithChewedAndMuddy ',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'B',
                text: 'I’m okay with the chewed\nup furnitures and muddy\npaws',
                fontSize: 18,
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'MessStaysInCage',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'C',
                text: 'If the mess stays in the\ncage it’s fine by me',
                fontSize: 18,
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'NotBotheredFurShed',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'D',
                text: 'I’m not bothered with\nfur sheddings',
                fontSize: 18,
              ),
              CustomRadioButton<String>(
                tabController: widget.tabController,
                value: 'FineHabitatMaintenance',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'E',
                text: 'I’m fine with habitat\nmaintenance',
                fontSize: 18,
              ),
              // CustomCheckbox(
              //     tabController: tabController,
              //     text: 'I’m basically\n a neat freak'),
              // CustomCheckbox(
              //     tabController: tabController,
              //     text:
              //         'I’m okay with\n the chewed up furnitures\n and muddy paws'),
              // CustomCheckbox(
              //     tabController: tabController,
              //     text: 'If the mess stays\n in the cage it’s fine by me'),
              // CustomCheckbox(
              //     tabController: tabController,
              //     text: 'I’m not bothered with fur shedding '),
              // CustomCheckbox(
              //     tabController: tabController,
              //     text: 'I’m fine with habitat maintenance'),
            ],
          ),
          CustomButton(tabController: widget.tabController),
        ],
      ),
    );
  }
}
