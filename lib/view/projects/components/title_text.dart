//import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.prefix, required this.title});

  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    final double fontSize = !Responsive.isDesktop(context)
        ? Responsive.isLargeMobile(context)
            ? 20
            : 30
        : 50;

    final textStyle = Theme.of(context).textTheme.titleMedium!.copyWith(
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

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$prefix ', style: textStyle),
        titleWidget,
      ],
    );
  }
}
