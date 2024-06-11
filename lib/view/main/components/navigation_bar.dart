import 'package:flutter/material.dart';
import 'package:khap/view%20model/responsive.dart';
import 'package:khap/view/intro/components/side_menu_button.dart';
import 'package:khap/view/main/components/connect_button.dart';
//import '../../../res/constants.dart';
import 'navigation_button_list.dart';
import 'package:khap/view%20model/controller.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(0),
            child: !Responsive.isLargeMobile(context)
                ? GestureDetector(
                    onTap: () {
                      controller.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                    },
                    child: Image. asset(
                      'assets/logotopleft.png',
                    ),
                  )
                : MenuButton(
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(
            flex: 2,
          ),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(
            flex: 2,
          ),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
