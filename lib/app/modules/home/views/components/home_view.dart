import 'package:flutter/material.dart';
import 'package:flutter_dashboard/app/_shared/responsive.dart';
import 'package:flutter_dashboard/app/modules/dashboard/views/dashboard_view.dart';
import 'package:flutter_dashboard/app/modules/home/views/side_menu.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(child: SideMenu()),
            Expanded(
              flex: 5,
              child: DashboardView(),
            ),
          ],
        ),
      ),
    );
  }
}
