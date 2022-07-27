import 'dart:io';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_editor/assets/details.dart';
import 'package:flutter_editor/constants/constants.dart';
import 'package:flutter_editor/controller/theme_state.dart';
import 'package:get/get.dart';

class TimeImageWidget extends StatelessWidget {
  TimeImageWidget({
    Key? key,
    required this.int1,
    required this.height,
    required this.sequence,
  }) : super(key: key);

  final ThemeController themeController = Get.find<ThemeController>();
  final Constants constants = Get.find<Constants>();
  final dynamic int1;
  final double height;
  final int sequence;

  @override
  Widget build(BuildContext context) {
    File image = File(
        "${themeController.rootPath.string}\\${AssetsDetails.timePath(int1,sequence)}");
    return Image.file(image, height: height * ThemeController.ratio);
  }
}

class AssetImageWidget extends StatelessWidget {
  AssetImageWidget({
    Key? key,
    required this.name,
    required this.height,
  }) : super(key: key);

  final ThemeController themeController = Get.find<ThemeController>();
  final dynamic name;
  final double height;

  @override
  Widget build(BuildContext context) {
    File image = File(
        "${themeController.rootPath.string}\\${AssetsDetails.assetsPath(name)}");
    return Image.file(
      image,
      height: height * ThemeController.ratio,
    );
  }
}


class Time2ImageWidget extends StatelessWidget {
  Time2ImageWidget({
    Key? key,
    required this.int1,
    required this.height,
  }) : super(key: key);

  final ThemeController themeController = Get.find<ThemeController>();
  final Constants constants = Get.find<Constants>();
  final dynamic int1;
  final double height;

  @override
  Widget build(BuildContext context) {
    File image = File(
        "${themeController.rootPath.string}\\${AssetsDetails.assetsPath(int1)}");
    return Image.file(image, height: height * ThemeController.ratio);
  }
}