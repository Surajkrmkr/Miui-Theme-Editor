import 'dart:io';
import 'package:flutter_editor/constants/constants.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  var wallPath = ''.obs;
  var name = ''.obs;
  var rootPath = ''.obs;
  double ratio = (Constants.actualHeight / 2340);

  setthemeDetails() {
    name.value = wallPath.string.split('\\').reversed.toList()[2];
    rootPath.value = File(wallPath.string).parent.parent.path;
  }

  setDragThemeDetails() {
    name.value = rootPath.string.split('\\').last;
    wallPath.value = rootPath.string + '\\wallpaper\\default_wallpaper.jpg';
  }
}
