import 'package:flutter/material.dart';
import 'package:flutter_dashboard/app/_shared/responsive.dart';
import 'package:flutter_dashboard/app/modules/dashboard/views/components/profile_card.dart';
import 'package:flutter_dashboard/app/modules/dashboard/views/components/search_field.dart';
import 'package:flutter_dashboard/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
              onPressed: () {
                Get.find<HomeController>().controlMenu();
              },
              icon: const Icon(Icons.menu)),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        const Expanded(
          child: SearchField(),
        ),
        const ProfileCard()
      ],
    );
  }
}
