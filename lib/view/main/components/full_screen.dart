import 'package:flutter/material.dart';
import 'package:khap/view/club/club.dart';
import 'package:khap/view/form/form.dart';
import 'package:khap/view/globalChat/globalChat.dart';
import 'package:khap/view/intro/introduction.dart';
import 'package:khap/view/map/map.dart';
import 'package:khap/view/projects/project_view.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

import '../../../res/constants.dart'; // Import your constants if needed

// Define your gallery widgets as a list of Widget objects
final List<Widget> galleryWidgets = [
  Maps(),
  Clubs(),
  GlobalChat(),
  Society(),
  ProjectsView(),
  Introduction(),
];

class FullScreen extends StatelessWidget {
  const FullScreen({Key? key}) : super(key: key); // Corrected constructor

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Center(
        child: IconButton(
          icon: Icon(Icons.fullscreen),
          onPressed: () {
            // Show the SwipeImageGallery when the IconButton is pressed
            SwipeImageGallery(
              context: context,
              children: galleryWidgets,
            ).show();
          },
        ),
      ),
    );
  }
}
