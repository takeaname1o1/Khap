import 'package:flutter/material.dart';
import 'package:khap/view/globalChat/globalChat.dart';
import 'package:khap/view/form/form.dart';
import 'package:khap/view/intro/introduction.dart';
import 'package:khap/view/main/main_view.dart';
import 'package:khap/view/projects/project_view.dart';
import 'package:khap/view/map/map.dart';
import 'package:khap/view/club/club.dart';
// Import the SwipeImageGallery package if it exists
//import 'package:your_package/swipe_image_gallery.dart'; // Update this with the actual package name if necessary
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> galleryWidgets = [
      Maps(),
      Clubs(),
      GlobalChat(),
      Society(),
      //forms(),
      ProjectsView(),
      Introduction(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: MainView(pages: galleryWidgets),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Trigger the SwipeImageGallery to show
                SwipeImageGallery(
                  context: context,
                  children: galleryWidgets,
                ).show();
              },
              child: Text('Swipe mode'),
            ),
          ),
        ],
      ),
    );
  }
}
