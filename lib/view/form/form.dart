// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khap/view%20model/getx_controllers/form_controller.dart';
import 'package:khap/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';
import 'components/form_grid.dart';

class forms extends StatelessWidget {
  final controller = Get.put(FormController());
  forms({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'Popular ', title: 'Society'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: FormGrid(
                    crossAxisCount: 2,
                    ratio: 1.5,
                  ),
                  extraLargeScreen: FormGrid(crossAxisCount: 3, ratio: 1.6),
                  largeMobile: FormGrid(crossAxisCount: 1, ratio: 1.8),
                  mobile: FormGrid(crossAxisCount: 1, ratio: 1.4),
                  tablet: FormGrid(
                    ratio: 1.7,
                    crossAxisCount: 2,
                  )))
        ],
      ),
    );
  }
}
