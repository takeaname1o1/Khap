// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khap/view%20model/getx_controllers/form_controller.dart';
import 'package:khap/view/projects/components/title_text.dart';
import 'package:get/get.dart';

class maps extends StatelessWidget {
  final controller = Get.put(FormController());

  maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mapbg.png'),
             colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop), 
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleText(prefix: 'map', title: 'data'),
          ],
        ),
      ),
    );
  }
}
