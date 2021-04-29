import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wi_app/components/loading.dart';
import 'package:wi_app/pages/settings.dart';
import 'package:wi_app/pages/profile.dart';
import 'package:wi_app/pages/match.dart';
import 'package:wi_app/pages/chat.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WorkInter',
      initialRoute: '/match',
      routes: {
        '/': (context) => Loading(),
        '/settings': (context) => Settings(),
        '/profile': (context) => Profile(),
        '/match': (context) => Match(),
        '/chat': (context) => Chat(),
      }
    );
  }
}
