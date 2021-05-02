import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20.0),
                child: SettingsList(
                  backgroundColor: Colors.white,
                  sections: [
                    SettingsSection(
                      title: 'Language',
                      tiles: [
                        SettingsTile(
                          title: 'Language',
                          subtitle: 'English',
                          leading: Icon(Icons.language),
                          onPressed: (BuildContext context) {},
                        )]
                    ),SettingsSection(
                      title: 'Security',
                      tiles: [SettingsTile.switchTile(
                          title: 'Use fingerprint',
                          leading: Icon(Icons.fingerprint),
                          switchValue: value,
                          onToggle: (bool value) {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


