import 'package:flutter/material.dart';
import 'package:wi_app/models/jobPostModel.dart';

class JobPosting extends StatefulWidget {
  JobPost data;
  JobPosting({@required this.data});

  @override
  _JobPostingState createState() => _JobPostingState();
}

class _JobPostingState extends State<JobPosting> {
  @override
  Widget build(BuildContext context) {
    String jobType = widget.data.remote ? 'Remote' : 'On Site';
    return Column(
      children: [
        Container(
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Image.network(widget.data.logoURL, width: 50, height: 50),
              Text(widget.data.company),
            ]),
            Text(widget.data.location + ' ($jobType)'),
          ]),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(widget.data.jobTitle),
        ),
        Container(child: null),
        Container()
      ],
    );
  }
}
