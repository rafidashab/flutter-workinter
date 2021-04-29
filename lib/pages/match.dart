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
            Navigation(),
            Expanded(
              flex: 7,
              child: SwipeCard(),
            ),
            Expanded(
              flex: 4,
              child: Container(
                  color: Colors.blue[100],
                  child: Column(children: [
                    Row(
                      children: [Text('Description of the job')],
                    )
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}

