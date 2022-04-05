import 'package:flutter/material.dart';
import 'package:telegram/screens/home/widgets/drawer_header.dart';

class SpiderDrawer extends StatelessWidget {
  const SpiderDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const Header(),
          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text("New Groups"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text("Contacts"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.phone_outlined),
            title: const Text("Calls"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.radar_outlined),
            title: const Text("People Nearby"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border),
            title: const Text("Saved Messages"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Settings"),
            onTap: () {},
          ),
          const Divider(color: Colors.black),
          ListTile(
            leading: const Icon(Icons.person_add_outlined),
            title: const Text("Invite Friends"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text("Telegram Features"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
