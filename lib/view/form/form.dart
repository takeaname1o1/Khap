import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khap/res/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dashboard/dashboard.dart';
import 'package:khap/view/projects/components/title_text.dart';
//import '../../../model/form_model.dart';
import 'package:khap/view%20model/getx_controllers/form_controller.dart';

//import 'package:flutter_survey/flutter_survey.dart';

class Society extends StatelessWidget {
  final controller = Get.put(FormController());

  Society({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        toolbarHeight: 56.0,
        title: const TitleText(prefix: 'Popular ', title: 'Society'),
      ),
      body: SocietyDashboard(),
    );
  }
}

class SocietyDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SocietyDashboardBody();
  }
}

class SocietyDashboardBody extends StatefulWidget {
  @override
  _SocietyDashboardBodyState createState() => _SocietyDashboardBodyState();
}

class _SocietyDashboardBodyState extends State<SocietyDashboardBody> {
  late DashboardItemController<ClubDashboardItem> itemController;

  @override
  void initState() {
    super.initState();
    itemController = DashboardItemController<ClubDashboardItem>(
      items: formList.map((club) {
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
  final FormModel club;

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
  final FormModel club;

  const ClubWidget({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launchUrl(Uri.parse(club.dlink)),
      child: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Image.asset(
          club.imgPath,
          fit: BoxFit.fitWidth,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}

class FormModel {
  final String name;
  final String cName;
  final String imgPath;
  final String dlink;

  FormModel({
    required this.name,
    required this.cName,
    required this.imgPath,
    required this.dlink,
  });
}

List<FormModel> formList = [
  FormModel(
    name: 'Computer Science Society',
    cName: 'CSS',
    imgPath: 'assets/society/cs.png',
    dlink: 'https://in.linkedin.com/company/cssnits',
  ),
  FormModel(
    name: 'Electronics and Communication Society',
    cName: 'ECS',
    imgPath: 'assets/society/ec.png',
    dlink:
        'https://in.linkedin.com/company/electronics-and-communication-society-nit-silchar',
  ),
  FormModel(
    name: 'Mechanical Engineering Society',
    cName: 'MES',
    imgPath: 'assets/society/me.png',
    dlink: 'https://in.linkedin.com/company/mes-nit-silchar',
  ),
  FormModel(
    name: 'Electrical Engineering Society',
    cName: 'EES',
    imgPath: 'assets/society/ee.png',
    dlink:
        'https://in.linkedin.com/company/electrical-engineering-society-nit-silchar',
  ),
  FormModel(
    name: 'Civil Engineering Society',
    cName: 'CES',
    imgPath: 'assets/society/ce.png',
    dlink: 'https://in.linkedin.com/company/ces-nitsilchar',
  ),
];
