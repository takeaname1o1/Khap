import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';
import 'package:khap/view%20model/getx_controllers/form_controller.dart';

final assets = [
  const Image(image: AssetImage('assets/map/1.png')),
  const Image(image: AssetImage('assets/map/2.png')),
  const Image(image: AssetImage('assets/map/3.png')),
  const Image(image: AssetImage('assets/map/4.png')),
];

// Controller for the image gallery
final ImageGalleryController galleryController =
    ImageGalleryController(initialPage: 2);

class Maps extends StatelessWidget {
  final controller = Get.put(FormController());

  Maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            //const Text('Open Gallery With Widgets'),
            //const Text('Open Gallery With Assets'),
            //const Text('Open Gallery With Controller'),
            //const Text('Open Gallery With Builder'),
            const Text('image view Example'),
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => SwipeImageGallery(
                        context: context,
                        children: [assets[0], assets[1], assets[2], assets[3]],
                      ).show(),
                      child: const Hero(
                        tag: 'imageId1',
                        child: Image(image: AssetImage('assets/map/1.png')),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => SwipeImageGallery(
                      context: context,
                      children: [assets[0], assets[1], assets[2], assets[3]],
                      initialIndex: 1,
                    ).show(),
                    child: const Hero(
                      tag: 'imageId2',
                      child: Image(image: AssetImage('assets/map/2.png')),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => SwipeImageGallery(
                      context: context,
                      children: [assets[0], assets[1], assets[2], assets[3]],
                      initialIndex: 2,
                    ).show(),
                    child: const Hero(
                      tag: 'imageId3',
                      child: Image(image: AssetImage('assets/map/3.png')),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => SwipeImageGallery(
                      context: context,
                      children: [assets[0], assets[1], assets[2], assets[3]],
                      initialIndex: 3,
                    ).show(),
                    child: const Hero(
                      tag: 'imageId4',
                      child: Image(image: AssetImage('assets/map/4.png')),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
