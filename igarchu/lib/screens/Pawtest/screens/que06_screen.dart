// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pwidgets.dart/custom_button.dart';
import '../pwidgets.dart/custome_checkbox.dart';

class Question06 extends StatefulWidget {
  final TabController tabController;

  const Question06({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Question06> createState() => _Question06State();
}

class _Question06State extends State<Question06> {
  // String? _groupValue;

  // ValueChanged<String?> _valueChangedHandler() {
  //   return (value) => setState(() => _groupValue = value!);
  // }

  // String? nValue;

  // ValueChanged<String?> _valueChangedHandler() {
  //   String? value = '';
  //   nValue = value;
  //   return (value) => setState(() => print('${nValue}'));
  // }

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
              Text('What are you looking for in a pet?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 20),
              CustomCheckbox(
                nValue: "playful&fun",
                tabController: widget.tabController,
                text: 'I want a pet that is\nplayful and fun',
                fontSized: 18,
              ),
              SizedBox(height: 17),
              CustomCheckbox(
                nValue: "calm&gentle",
                tabController: widget.tabController,
                text: 'I want a pet that is calm\nand gentle',
                fontSized: 18,
              ),
              SizedBox(height: 17),
              CustomCheckbox(
                nValue: "intelligent&loyal",
                tabController: widget.tabController,
                text: 'I want a pet intelligent\nand loyal',
                fontSized: 18,
              ),
              SizedBox(height: 17),
              CustomCheckbox(
                nValue: "child-friendly",
                tabController: widget.tabController,
                text: 'I want a child-friendly pet',
                fontSized: 18, sizeBox: 0,
              ),
            ],
          ),
          CustomButton(tabController: widget.tabController),
        ],
      ),
    );
  }
}
