import 'package:flutter/material.dart';
import 'package:khap/view/globalChat/globalChat.dart';
import 'package:khap/view/form/form.dart';
import 'package:khap/view/intro/introduction.dart';
import 'package:khap/view/main/main_view.dart';
import 'package:khap/view/projects/project_view.dart';
import 'package:khap/view/map/map.dart';
import 'package:khap/view/club/club.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      Clubs(),
     GlobalChat(),
      forms(),
      Maps(),
      ProjectsView(),
      Introduction(),
    ]);
  }
}
