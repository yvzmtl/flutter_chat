import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/welcome/controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => SizedBox(
              width: 360.w,
              height: 780.w,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView(
                    scrollDirection: Axis.horizontal,
                    reverse: false,
                    onPageChanged: (index) {},
                    controller: PageController(
                        initialPage: 0, keepPage: false, viewportFraction: 1),
                    pageSnapping: true,
                    physics: const ClampingScrollPhysics(),
                  )
                ],
              ),
            )));
  }
}
