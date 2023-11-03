import 'package:flutter/material.dart';

class SimpleData extends StatefulWidget {
  const SimpleData({super.key});

  @override
  State<SimpleData> createState() => _SimpleDataState();
}

class _SimpleDataState extends State<SimpleData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Hello')
        ],
      ),
    );
  }
}