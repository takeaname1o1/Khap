import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import '../../../res/constants.dart';
import 'package:feedback/feedback.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: InkWell(
        onTap: (){
            BetterFeedback.of(context).show((UserFeedback feedback) {
              // Handle the feedback submission here if not handled globally
              print('Feedback: ${feedback.text}');
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Feedback submitted: ${feedback.text}'),
                ),
              );
            });
          },
        borderRadius: BorderRadius.circular(defaultPadding + 10),
        child: Container(
            height: 60,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultPadding),
                gradient: LinearGradient(colors: [
                  Colors.pink,
                  Colors.blue.shade900,
                ]),
                boxShadow: const [
                  BoxShadow(
                      color: bgColor,
                      offset: Offset(0, -1),
                      blurRadius: defaultPadding),
                  BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, 1),
                      blurRadius: defaultPadding),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.message,
                  color: Colors.greenAccent,
                  size: 15,
                ),
                const SizedBox(width: defaultPadding / 4),
                Text(
                'Feedback',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
  }
}
