import 'package:flutter/material.dart';
import 'package:khap/view%20model/controller.dart';
import 'package:khap/res/constants.dart';
import 'package:khap/view/main/components/navigation_bar.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: kIsWeb ? EdgeInsets.only(top: defaultPadding * 2) : EdgeInsets.only(top: defaultPadding / 2),
            ),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            //Spacer(), NavigationButtonList(), Spacer(),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: pages,
              ),
            )
          ],
        ),
      ),
    );
  }
}
