import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:stereo/Screens/notiscreen.dart';

class SettingsScreen extends StatefulWidget {
  static const String id = 'settings_screen';
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          backgroundColor: Colors.white,
          elevation: 15,
          title: Container(
            width: 100,
            child: Image.asset('assets/logo.png'),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [
              SettingsGroup(
                title: 'GENERAL',
                children: <Widget>[
                  NotificationPage(),
                  buildpop(),
                  buildfreq(),
                  buildnotes(),
                ],
              ),
              const SizedBox(height: 32),
              SettingsGroup(
                title: 'ACCOUNTS',
                children: <Widget>[
                  const SizedBox(height: 8),
                  buildLogout(),
                  buildDeleteAccount(),
                ],
              ),
              const SizedBox(height: 32),

              SettingsGroup(
                title: 'FEEDBACK',
                children: <Widget>[
                  const SizedBox(height: 8),
                  BuildReportBug(),
                  buildSendFeedback(),
                ],
              ),
            ],
          ),
        ),
      );


  Widget buildLogout() =>
      SimpleSettingsTile(
        title: 'Logout',
        subtitle: '',
        leading: IconWidget(icon: Icons.logout, color: Colors.blue),
      );
  Widget buildpop() =>
      SimpleSettingsTile(
        title: 'Pop Ups',
        subtitle: '',
        leading: IconWidget(icon: Icons.notification_important_outlined, color: Colors.orange),
      );Widget buildfreq() =>
      SimpleSettingsTile(
        title: 'High Frequency Sounds',
        subtitle: '',
        leading: IconWidget(icon: Icons.surround_sound_outlined , color: Colors.blueGrey),

      );Widget buildnotes() =>
      SimpleSettingsTile(
        title: 'Converted Notes',
        subtitle: '',
        leading: IconWidget(icon: Icons.notes , color: Colors.amber),

      );



  Widget buildDeleteAccount() =>
      SimpleSettingsTile(
        title: 'Delete Account',
        subtitle: '',
        leading: IconWidget(icon: Icons.delete, color: Colors.pink),

      );

  Widget BuildReportBug() =>
      SimpleSettingsTile(
        title: 'Report A Bug',
        subtitle: '',
        leading: IconWidget(icon: Icons.bug_report, color: Colors.teal),

      );

  Widget buildSendFeedback() =>
      SimpleSettingsTile(
        title: 'Send Feedback',
        subtitle: '',
        leading: IconWidget(icon: Icons.thumb_up, color: Colors.purple),

      );
}

class IconWidget extends StatelessWidget{
  final IconData icon;
  final Color color;
  const IconWidget({
    Key? key,
    required this.icon,
    required this.color,
}) : super(key: key);
  @override
  Widget build(BuildContext context) =>Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color:color,

    ),
    child: Icon(icon, color: Colors.white),
  );
}

