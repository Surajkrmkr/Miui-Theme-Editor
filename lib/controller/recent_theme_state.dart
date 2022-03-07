import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_editor/model/recent_theme.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class RecentThemeController extends GetxController {
  var recentList = [].obs;

  @override
  onInit() {
    getFromHive();
    super.onInit();
  }

  getFromHive() async {
    final box = await Hive.openBox<RecentTheme>('recent');
    recentList.value = box.values.toList();
  }

  addToRecent(
      {@required String? name,
      @required String? imagePath,
      @required String? themePath}) {
    bool canBeAdded = true;
    for (int i = 0; i < recentList.length; i++) {
      if (recentList[i].themePath == themePath) {
        canBeAdded = false;
      }
    }

    final item = RecentTheme()
      ..name = name
      ..imagePath = imagePath
      ..themePath = themePath;

    if (canBeAdded) {
      final box = Hive.box<RecentTheme>('recent');
      box.add(item);
      recentList.add(item);
    }
  }

  deleteFromRecent() {
    final box = Hive.box<RecentTheme>('recent');
    box.deleteFromDisk();
    recentList.value = [];
  }
}
