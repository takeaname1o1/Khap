import 'package:flutter/material.dart';
import 'package:khap/res/constants.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const DrawerImage(),
            const Spacer(),
            Text(
              'National Institute of Technology, Silchar(1967) \n               Let our study be enlightening',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontSize: 11.0),
            ),
            const SizedBox(
              height: defaultPadding / 4,
            ),
            const Text(
              'राष्ट्रीय प्रौद्योगिकी संस्थान, सिलचर(१९६७)\nतेजस्वी नवधितमस्तु',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
