import 'package:flutter/material.dart';
import 'package:khap/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(start: 30, end: 40, text: 'KHAP  '),
          largeMobile: AnimatedSubtitleText(start: 30, end: 25, text: 'KHAP  '),
          mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'KHAP '),
          tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'KHAP  '),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
                desktop: AnimatedSubtitleText(
                    start: 30, end: 40, text: 'by students', gradient: true),
                largeMobile: AnimatedSubtitleText(
                    start: 30, end: 25, text: 'by students', gradient: true),
                mobile: AnimatedSubtitleText(
                    start: 25, end: 20, text: 'by students', gradient: true),
                tablet: AnimatedSubtitleText(
                    start: 40, end: 30, text: 'by students', gradient: true),
              )
            : ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Colors.pink,
                    Colors.blue,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedSubtitleText(
                      start: 30, end: 40, text: 'by students', gradient: false),
                  largeMobile: AnimatedSubtitleText(
                      start: 30, end: 25, text: 'by students', gradient: false),
                  mobile: AnimatedSubtitleText(
                      start: 25, end: 20, text: 'by students', gradient: true),
                  tablet: AnimatedSubtitleText(
                      start: 40, end: 30, text: 'by students', gradient: false),
                ),
              ))
      ],
    );
  }
}
