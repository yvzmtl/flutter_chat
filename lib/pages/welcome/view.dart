import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/welcome/controller.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      (() => SizedBox(
            width: double.infinity,
            //width: 360.w,
            //height: 780.w,
            height: double.infinity,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView(
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  onPageChanged: (index) {
                    //controller.state.index.value = index;
                    controller.changePage(index);
                  },
                  controller: PageController(
                      initialPage: 0, keepPage: false, viewportFraction: 1),
                  pageSnapping: true,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    // 1. banner
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/banner1.png"),
                      )),
                    ),
                    // 2. banner
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/banner1.png"),
                      )),
                    ),
                    //3. banner
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/banner1.png"),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Positioned(
                            bottom: 90,
                            child: ElevatedButton(
                              onPressed: () {
                                controller.handleSignIn();
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  side: MaterialStateProperty.all(
                                      BorderSide(color: Colors.white))),
                              child: Text("Giriş"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 65,
                  child: DotsIndicator(
                    position: controller.state.index.toDouble(),
                    dotsCount: 3,
                    reversed: false,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      size: Size.square(9),
                      activeSize: Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    ));
  }
}
