import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khap/res/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:dashboard/dashboard.dart';

import '../../../model/club_model.dart';
import 'package:khap/view%20model/getx_controllers/form_controller.dart';

class Clubs extends StatelessWidget {
  final controller = Get.put(FormController());

  Clubs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClubsDashboard(),
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
    Color.fromARGB(255, 0, 0, 0);
    return GestureDetector(
      onTap: () => launchUrl(club.socialLink),
      child: Image.network(
        club.logo,
        fit: BoxFit.fitWidth,
        height: 100,
        width: 100,
      ),
    );
  }

  void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}