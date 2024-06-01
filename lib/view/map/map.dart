// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khap/view%20model/getx_controllers/form_controller.dart';
import 'package:khap/view/projects/components/title_text.dart';
import 'package:get/get.dart';

class Maps extends StatelessWidget {
  final controller = Get.put(FormController());

  Maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/dogo.gif',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(prefix: 'meme', title: 'dog'),
            ],
          ),
        ],
      ),
    );
  }
}
