import 'package:flutter/material.dart';
import 'package:hello_world_from_flutter/TestPage3.dart';

class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test2'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return TestPage3();
              }))
            },
            child: Text('NEXT', style: TextStyle(fontSize: 80))),
          TextButton(
            onPressed: () => {Navigator.of(context).pop()},
            child: Text('BACK', style: TextStyle(fontSize: 80)))
        ])));
  }
}