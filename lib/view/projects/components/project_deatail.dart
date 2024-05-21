import 'package:flutter/material.dart';
import 'package:khap/view/projects/components/project_link.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            //  style: const TextStyle( height: 1.5),
            projectList[index].name,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w300),
            maxLines: null, // Remove the maxLines limit
            overflow: TextOverflow.visible,
          ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox(
                height: defaultPadding / 2,
              )
            : const SizedBox(
                height: defaultPadding,
              ),
        Text(
          projectList[index].description,
          style: const TextStyle(color: Colors.grey, height: 1.2, fontSize: 13),
          overflow: TextOverflow.visible,
        ),
        ProjectLinks(
          index: index,
        ),
        const SizedBox(
          height: defaultPadding / 20,
        ),
      ],
    );
  }
}
