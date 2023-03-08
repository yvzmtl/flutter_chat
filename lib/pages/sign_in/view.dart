import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/sign_in/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildLogo() {
      return Container(
        width: 110.w,
        margin: EdgeInsets.only(top: 85.h),
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: 100.w,
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 70.w,
                      //width: 80.w,
                      decoration: const BoxDecoration(
                        //color: AppColors.primaryBackground,
                        //boxShadow: [Shadows.primaryShadow],
                        color: Colors.deepPurpleAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 13.w,
                    top: 5.w,
                    child: Image.asset(
                      color: Colors.white,
                      "assets/images/chat.png",
                      width: 55.w,
                      height: 55.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
          ],
        ),
      ),
    );
  }
}
