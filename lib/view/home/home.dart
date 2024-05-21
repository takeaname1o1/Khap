import 'package:flutter/material.dart';
import 'package:khap/view/certifications/certifications.dart';
import 'package:khap/view/intro/introduction.dart';
import 'package:khap/view/main/main_view.dart';
import 'package:khap/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      ProjectsView(),
      Certifications(),
    ]);
  }
}
