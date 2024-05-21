import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'India Rankings 2023: Engineering', text: '40'),
        AreaInfoText(title: 'Campus', text: '625 acres'),
        AreaInfoText(title: 'Location', text: 'Silchar, Assam, India'),
        AreaInfoText(title: 'Website', text: 'http://www.nits.ac.in/'),
        SizedBox(
          height: defaultPadding,
        ),
       
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
