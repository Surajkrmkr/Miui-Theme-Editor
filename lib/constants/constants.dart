import 'dart:io';

import 'package:flutter_editor/assets/details.dart';
import 'package:flutter_editor/controller/theme_state.dart';
import 'package:get/get.dart';
import 'package:image_size_getter/file_input.dart';
import 'package:image_size_getter/image_size_getter.dart';

class Constants extends GetxController {
  static const double sh = 2340;
  static const double sw = 1080;

  static const double actualHeight = 550;

  var timePngHeight = 169.0.obs;
  var timePngWidth = 107.0.obs;
  var amPngHeight = 0.0.obs;
  var amPngWidth = 0.0.obs;
  var weekPngHeight = 0.0.obs;
  var weekPngWidth = 0.0.obs;
  var monthPngHeight = 0.0.obs;
  var monthPngWidth = 0.0.obs;
  var weatherIconHeight = 0.0.obs;
  var weatherIconWidth = 0.0.obs;
  var musicBgHeight = 0.0.obs;
  var musicBgWidth = 0.0.obs;
  var nextBtnHeight = 0.0.obs;
  var nextBtnWidth = 0.0.obs;
  var prevBtnHeight = 0.0.obs;
  var prevBtnWidth = 0.0.obs;
  var analogBgHeight = 0.0.obs;
  var analogBgWidth = 0.0.obs;
  var iconHeight = 0.0.obs;
  var sliderHeight = 0.0.obs;
  var sliderWidth = 0.0.obs;
  var unlHeight = 0.0.obs;
  var unHeight = 0.0.obs;

  @override
  void onInit() {
    getSize();
    super.onInit();
  }

  getSize() {
    final ThemeController themeController = Get.find();
    var amSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.string +
            "\\" +
            AssetsDetails.timePath('am_0', 0))));

    amPngHeight.value = amSize.height.toDouble();
    amPngWidth.value = amSize.width.toDouble();

    var timeSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.timePath('time_2', 0))));

    timePngHeight.value = timeSize.height.toDouble();
    timePngWidth.value = timeSize.width.toDouble();

    var weekSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.timePath('Week_2', 0))));

    weekPngHeight.value = weekSize.height.toDouble();
    weekPngWidth.value = weekSize.width.toDouble();

    var monthSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.timePath('mo_2', 0))));

    monthPngHeight.value = monthSize.height.toDouble();
    monthPngWidth.value = monthSize.width.toDouble();

    var weatherIconSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.assetsPath('weatherMini_src\\weather_1'))));

    weatherIconHeight.value = weatherIconSize.height.toDouble();
    weatherIconWidth.value = weatherIconSize.width.toDouble();

    var musicBGSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.assetsPath('music\\bg'))));

    musicBgHeight.value = musicBGSize.height.toDouble();
    musicBgWidth.value = musicBGSize.width.toDouble();

    var nextBtnSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.assetsPath('music\\next'))));

    nextBtnHeight.value = nextBtnSize.height.toDouble();
    nextBtnWidth.value = nextBtnSize.width.toDouble();

    var prevBtnSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.assetsPath('music\\prev'))));

    prevBtnHeight.value = prevBtnSize.height.toDouble();
    prevBtnWidth.value = prevBtnSize.width.toDouble();

    var analogBgSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.assetsPath('clock_src\\clock1\\bg'))));

    analogBgHeight.value = analogBgSize.height.toDouble();
    analogBgWidth.value = analogBgSize.width.toDouble();

    var iconSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.assetsPath('icon\\wp'))));
          
    iconHeight.value = iconSize.height.toDouble();

    var sliderSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.assetsPath('slider'))));
    
    sliderHeight.value = sliderSize.height.toDouble();
    sliderWidth.value = sliderSize.width.toDouble();

    var unlSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.assetsPath('unl'))));
    
    unlHeight.value = unlSize.height.toDouble();

    var unSize = ImageSizeGetter.getSize(FileInput(File(
        themeController.rootPath.value +
            "\\" +
            AssetsDetails.assetsPath('un'))));

    unHeight.value = unSize.height.toDouble();

  }
}
