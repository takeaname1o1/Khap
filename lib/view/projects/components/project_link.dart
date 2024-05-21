import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Text('Check on Drive',
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis),
            IconButton(
                onPressed: () {
                  launchUrl(Uri.parse(projectList[index].link));
                },
                icon: SvgPicture.asset('assets/icons/drive.png')),
          ],
        ),
        const Spacer(),
        TextButton(
            onPressed: () {
              launchUrl(Uri.parse(projectList[index].link));
            },
            child: const Row(
              children: [
                 Text(
                  // add link icon here
                  'Open Link ',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color.fromRGBO(136, 75, 221, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                Icon(
                  Icons.open_in_new,
              color: Color.fromRGBO(136, 75, 221, 1),
                  size: 12,
                ),
              ],
            ),
            )
      ],
    );
  }
}
