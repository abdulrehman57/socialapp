import 'package:ar_social_app/models/db.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage(currentUser.profileImageUrl!),
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            Text(
              currentUser.userName!,
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Divider(
              height: 2.0,
              thickness: 2.0,
            ),
            DrawerList(
              title: 'Home',
              icon: Icons.home,
            ),
            DrawerList(
              title: 'Chats',
              icon: Icons.chat,
            ),
            DrawerList(
              title: 'Map',
              icon: Icons.location_on,
            ),
            DrawerList(
              title: 'Profile',
              icon: Icons.account_circle,
            ),
            DrawerList(
              title: 'Settings',
              icon: Icons.settings,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  DrawerList({super.key, this.title, this.icon});

  String? title;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title!,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
