import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          color: Colors.yellow[100],
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: Icon(Icons.settings),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pushNamed(context, '/settings');
                        }
                    ),
                    IconButton(
                        icon: Icon(Icons.person_outline),
                        color: Colors.green,
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile');
                        }
                    ),
                    IconButton(
                        icon: Icon(Icons.favorite),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.pushNamed(context, '/match');
                        }
                    ),
                    IconButton(
                        icon: Icon(Icons.chat),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamed(context, '/chat');
                        }
                    )
                  ],
                )
              ])),
    );
  }
}