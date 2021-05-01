import 'package:flutter/material.dart';
import 'package:wi_app/components/navigation.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('WorkInter'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Text('Settings Page'),
            )
          ],
        ),
      ),
    );
  }
}


