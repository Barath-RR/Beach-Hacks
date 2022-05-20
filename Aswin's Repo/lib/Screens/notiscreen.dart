import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:untitled/settings.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';


class NotificationPage extends StatelessWidget{
  static const keyNews = 'key-news';
  static const KeyActivity = 'key-activity';
  static const KeyNewsletter = 'key-newsletter';
  static const KeyAppUpdate = 'key-appUpdate';


  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
    title: 'Notification',
    subtitle: 'Newsletter,App Update',
    leading: const IconWidget(
      icon: Icons.notifications,
      color: Colors.redAccent,
    ),
    child: SettingsScreen(
      title: 'Notifications',
      children: <Widget>[
        buildNews(),
        // buildActivity(),
        // buildNewsletter(),
        // buildAppUpdate(),
      ],
    ),

  );

  Widget buildNews() => SwitchSettingsTile(
    settingKey: keyNews,
    leading: IconWidget(icon: Icons.message ,color: Colors.purple),
    title: 'News For You',
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
