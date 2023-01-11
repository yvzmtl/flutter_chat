import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/welcome/controller.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Text("Proje welcome sayfası"),
      )),
    );
  }
}
