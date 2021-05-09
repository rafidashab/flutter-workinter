import 'package:flutter/cupertino.dart';

class JobPost{
  String logoURL;
  String company;
  String jobTitle;
  String location;
  bool remote;
  List<String> jobDescription = [];
  List<String> jobRequirement = [];

  JobPost({@required this.logoURL,@required this.company,@required this.jobTitle,@required this.location, @required this.remote});
}