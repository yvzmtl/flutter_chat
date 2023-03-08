import 'package:flutter_chat/pages/welcome/state.dart';
import 'package:flutter_chat/routes/names.dart';
import 'package:get/get.dart';

import '../../common/config.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();
  changePage(int index) async {
    state.index.value = index;
  }

  handleSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.SIGN_IN);
  }
}
