import 'package:flutter/material.dart';
import '../../../view model/responsive.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.prefix, required this.title}) : super(key: key);

  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    final double fontSize = !Responsive.isDesktop(context)
        ? Responsive.isLargeMobile(context)
            ? 18 // Decreased font size for large mobile
            : 24 // Default font size for smaller mobile
        : 40; // Font size for desktop

    final textStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        );

    final titleWidget = ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          end: Alignment.centerRight,
          begin: Alignment.centerLeft,
          colors: [Colors.pink, Colors.cyanAccent],
        ).createShader(bounds);
      },
      child: Text(title, style: textStyle),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start, // Align children to the start
      crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
      children: [
        SizedBox(height: 8), // Adjust vertical spacing with SizedBox
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Align text vertically
          children: [
            Text('$prefix ', style: textStyle),
            titleWidget,
          ],
        ),
        SizedBox(height: 8), // Adjust vertical spacing with SizedBox
      ],
    );
  }
}
