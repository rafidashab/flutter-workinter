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
    String job_type = widget.data.remote ? 'Remote' : 'On Site';
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Row(
              children: [Text(widget.data.logoURL), Text(widget.data.company)]),
        ),
        Container(
          child: Text(widget.data.jobTitle),
        ),
        Container(
          child: Text(widget.data.location + ' ($job_type)'),
        ),
        Container()
      ],
    );
  }
}
