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
    return Container(
      child: Text(widget.data.company),
    );
  }
}
