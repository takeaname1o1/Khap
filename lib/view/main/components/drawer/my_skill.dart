import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    image!,
                    height: 15,
                    width: 15,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}'),
                ],
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'B.Tech placement\n',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: .89,
          title: 'PLACEMENT ALL BRANCH (%)',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: .80,
          title: 'HIGHEST PACKAGE (LPA)',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: .14,
          title: 'AVERAGE PACKAGE (LPA)',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
          percentage: .1261,
          title: 'MEDIAN PACKAGE (LPA)',
          image: 'assets/icons/flutter.png',
        ),
      ],
    );
  }
}
