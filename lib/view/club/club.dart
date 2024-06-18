import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dashboard/dashboard.dart';
//import 'package:animated_toggle_switch/animated_toggle_switch.dart';

import 'package:khap/res/constants.dart';
import 'package:khap/view/projects/components/title_text.dart';
import '../../../model/club_model.dart';
import 'package:khap/view model/getx_controllers/form_controller.dart';

class Clubs extends StatelessWidget {
  final controller = Get.put(FormController());

  Clubs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        toolbarHeight: 56.0,
        title: const TitleText(prefix: 'Popular ', title: 'Club'),
      ),
      body: ClubsDashboard(),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: const Text("Show Your Interest"),
      ),
    );
  }
}

class ClubsDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClubsDashboardBody();
  }
}

class ClubsDashboardBody extends StatefulWidget {
  @override
  _ClubsDashboardBodyState createState() => _ClubsDashboardBodyState();
}

class _ClubsDashboardBodyState extends State<ClubsDashboardBody> {
  late DashboardItemController<ClubDashboardItem> itemController;

  @override
  void initState() {
    super.initState();
    itemController = DashboardItemController<ClubDashboardItem>(
      items: clubs.map((club) {
        return ClubDashboardItem(
          width: 5,
          height: 5,
          identifier: club.name,
          club: club,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dashboard<ClubDashboardItem>(
      dashboardItemController: itemController,
      slotCount: 15,
      padding: const EdgeInsets.all(8.0),
      horizontalSpace: 65.0,
      verticalSpace: 65.0,
      slotAspectRatio: 1,
      itemBuilder: (ClubDashboardItem item) {
        return ClubWidget(club: item.club);
      },
    );
  }
}

class ClubDashboardItem extends DashboardItem {
  final Club club;

  ClubDashboardItem({
    required int width,
    required int height,
    required String identifier,
    required this.club,
  }) : super(
          width: width,
          height: height,
          identifier: identifier,
        );
}

class ClubWidget extends StatelessWidget {
  final Club club;

  const ClubWidget({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => launchUrl(Uri.parse(club.socialLink)),
        child: Container(
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Image.asset(
            club.logoPath,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
