import 'package:flutter/material.dart';
import 'package:khap/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/playstore.svg',
            onTap: () => launchUrl(Uri.parse(
                'https://play.google.com/store/games?hl=en_IN&gl=US'))),
        SocialMediaIcon(
          icon: 'assets/icons/web.png',
          onTap: () => launchUrl(Uri.parse('https://khap.engineer/')),
        ),
        const SocialMediaIcon(
          icon: 'assets/icons/web.svg',
        ),
        const SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
        const SocialMediaIcon(icon: 'assets/icons/linkedin.svg'),
      ],
    );
  }
}
