import 'package:flutter/material.dart';
import 'package:khap/view%20model/controller.dart';

import 'navigation_button.dart'; // check

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Home'),
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  text: 'Material'),
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  text: 'Certifications'),
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(3,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  text: 'Online Form '),
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  text: 'Updates'),

            ],
          ),
        );
      },
    );
  }
}
