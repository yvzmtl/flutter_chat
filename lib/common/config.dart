import 'package:flutter/material.dart';
import 'package:flutter_chat/common/storage.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ConfigStore extends GetxController {
  static ConfigStore get to => Get.find();

  bool isFirstOpen = false;
  PackageInfo? _paltform;
  String get version => _paltform?.version ?? '-';
  bool get isRelease => bool.fromEnvironment("dart.vm.product");
  Locale locale = Locale('en', 'US');
  List<Locale> languages = [
    Locale('en', 'US'),
    Locale('tr', 'TR'),
  ];

  @override
  void onInit() {
    super.onInit();
    //isFirstOpen = StorageService.to.getBool(STORAGE_DEVICE_FIRST_OPEN_KEY);
    isFirstOpen = StorageService.to.getBool('');
  }

  Future<void> getPlatform() async {
    _paltform = await PackageInfo.fromPlatform();
  }

  Future<bool> saveAlreadyOpen() {
    return StorageService.to.setBool('', true);
  }

  void onInitLocale() {
    var langCode = StorageService.to.getString("STORAGE_LANGUAGE_CODE");
    if (langCode.isEmpty) return;
    var index = languages.indexWhere((element) {
      return element.languageCode == langCode;
    });

    if (index < 0) return;
    locale = languages[index];
  }

  void onLocaleUpdate(Locale value) {
    locale = value;
    Get.updateLocale(value);
    StorageService.to.setString("STORAGE_LANGUAGE_CODE", value.languageCode);
  }
}
