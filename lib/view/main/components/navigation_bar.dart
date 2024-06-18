import 'package:flutter/material.dart';
import 'package:khap/view/main/components/full_screen.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Image.asset(
            'assets/logotopleft.png',
            fit: BoxFit.scaleDown,
            height: 20,
            //the height as needed
          ),
        ),
        const NavigationButtonList(),
        const FullScreen(),
      ],
    );
  }
}
