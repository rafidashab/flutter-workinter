import 'package:flutter/material.dart';
import 'package:wi_app/components/navigation.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Chat'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Text('Chat Page'),
            )
          ],
        ),
      ),
    );
  }
}


