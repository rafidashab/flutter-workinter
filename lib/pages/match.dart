import 'package:flutter/material.dart';
import 'package:wi_app/components/navigation.dart';
import 'package:wi_app/components/swipe_card.dart';

class Match extends StatelessWidget {
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
              child: SwipeCard(),
            ),
          ],
        ),
      ),
    );
  }
}

