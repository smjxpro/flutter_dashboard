import 'package:flutter/material.dart';
import 'package:flutter_dashboard/app/modules/home/views/components/drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              svgSource: 'assets/icons/menu_dashboard.svg',
              title: 'Dashboard',
              onTap: () {},
            ),
            DrawerListTile(
              svgSource: 'assets/icons/menu_tran.svg',
              title: 'Transaction',
              onTap: () {},
            ),
            DrawerListTile(
              svgSource: 'assets/icons/menu_task.svg',
              title: 'Task',
              onTap: () {},
            ),
            DrawerListTile(
              svgSource: 'assets/icons/menu_doc.svg',
              title: 'Documents',
              onTap: () {},
            ),
            DrawerListTile(
              svgSource: 'assets/icons/menu_store.svg',
              title: 'Store',
              onTap: () {},
            ),
            DrawerListTile(
              svgSource: 'assets/icons/menu_notification.svg',
              title: 'Notification',
              onTap: () {},
            ),
            DrawerListTile(
              svgSource: 'assets/icons/menu_profile.svg',
              title: 'Profile',
              onTap: () {},
            ),
            DrawerListTile(
              svgSource: 'assets/icons/menu_setting.svg',
              title: 'Settings',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
