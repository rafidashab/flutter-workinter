import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WorkInter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('WorkInter'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                    color: Colors.yellow[100],
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.settings,
                                color: Colors.black,
                                size: 24.0,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                              Icon(
                                Icons.person_outline,
                                color: Colors.green,
                                size: 30.0,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 36.0,
                              ),
                              Icon(
                                Icons.chat,
                                color: Colors.blue,
                                size: 36.0,
                              ),
                            ],
                          )
                        ])),
              ),
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
      ),
    );
  }
}

class SwipeCard extends StatefulWidget {
  @override
  _SwipeCardState createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  List<String> welcomeImages = [
    "assets/welcome0.png",
    "assets/welcome1.png",
    "assets/welcome2.png",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.
    return TinderSwapCard(
      swipeUp: true,
      swipeDown: true,
      orientation: AmassOrientation.TOP,
      totalNum: welcomeImages.length,
      stackNum: 2,
      swipeEdge: 6.0,
      maxWidth: MediaQuery.of(context).size.width,
      maxHeight: MediaQuery.of(context).size.height,
      minWidth: MediaQuery.of(context).size.width * 0.95,
      minHeight: MediaQuery.of(context).size.height * 0.95,
      cardBuilder: (context, index) => Card(
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('${welcomeImages[index]}'))),
      cardController: controller = CardController(),
      swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
        /// Get swiping card's alignment
        if (align.x < 0) {
          //Card is LEFT swiping
        } else if (align.x > 0) {
          //Card is RIGHT swiping
        }
      },
      swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
        /// Get orientation & index of swiped card!
        print(orientation);
        print(index);
      },
    );
  }
}
