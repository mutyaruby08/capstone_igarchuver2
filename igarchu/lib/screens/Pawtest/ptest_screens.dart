// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/screens_exports.dart';

class PawtestScreen extends StatefulWidget {
  const PawtestScreen({Key? key}) : super(key: key);

  @override
  State<PawtestScreen> createState() => _PawtestScreenState();
}

class _PawtestScreenState extends State<PawtestScreen> {
  static const List<Tab> tabs = <Tab>[
    Tab(text: 'Question 1'),
    Tab(text: 'Question 2'),
    Tab(text: 'Question 3'),
    Tab(text: 'Question 4'),
    Tab(text: 'Question 5'),
    Tab(text: 'Question 6'),
    Tab(text: 'Question 7'),
    Tab(text: 'Question 8'),
    Tab(text: 'Question 9'),
    Tab(text: 'Question 10'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener((() {
          if (!tabController.indexIsChanging) {}
        }));
        return Scaffold(
          // appBar: CustomAppbar(
          //   title: 'iGarchu',
          //   hasActions: false,
          // ),
          body: TabBarView(
            children: [
              Question01(tabController: tabController),
              Question02(tabController: tabController),
              Question03(tabController: tabController),
              Question04(tabController: tabController),
              Question05(tabController: tabController),
              Question06(tabController: tabController),
              Question07(tabController: tabController),
              Question08(tabController: tabController),
              Question09(tabController: tabController),
              Question10(tabController: tabController),
              // Email(tabController: tabController),
              // Demo(tabController: tabController),
              // Pictures(tabController: tabController),
              // Bio(tabController: tabController),
              // Location(tabController: tabController),
            ],
          ),
        );
      }),
    );
  }
}

