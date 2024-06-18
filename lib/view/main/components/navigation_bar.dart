import 'package:flutter/material.dart';
import 'package:khap/view/intro/components/side_menu_button.dart';
import 'package:khap/view/main/components/connect_button.dart';
import 'navigation_button_list.dart';
import 'package:khap/view%20model/controller.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         // const Spacer(),
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(
              'assets/logotopleft.png',
              height: 40.0, // Adjust the height as needed
            ),
          ),
          const NavigationButtonList(),
          //const Spacer(flex: 2),
          const ConnectButton(),
          //const Spacer(),
        ],
      ),
    );
  }
}
