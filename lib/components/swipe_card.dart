import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:wi_app/components/job_posting.dart';
import 'package:wi_app/models/jobPostModel.dart';

class SwipeCard extends StatefulWidget {
  @override
  _SwipeCardState createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {

  List<JobPost> postings = [
    JobPost(logoURL: '', company: 'Square', jobTitle: 'Software Developer', location: 'Vancouver', remote: true)
  ];

  List<String> welcomeImages = [
    "assets/welcome0.png",
    "assets/welcome1.png",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.
    return TinderSwapCard(
      swipeUp: true,
      swipeDown: true,
      orientation: AmassOrientation.TOP,
      totalNum: postings.length,
      stackNum: 2,
      swipeEdge: 6.0,
      maxWidth: MediaQuery.of(context).size.width,
      maxHeight: MediaQuery.of(context).size.height,
      minWidth: MediaQuery.of(context).size.width * 0.95,
      minHeight: MediaQuery.of(context).size.height * 0.95,
      cardBuilder: (context, index) => Card(
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,p
              // child: JobPosting(data: postings[index]),
              child: Image.asset('${welcomeImages[index]}')
          )
      ),
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