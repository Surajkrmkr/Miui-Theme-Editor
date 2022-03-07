import 'dart:io';

import 'package:desktop_drop/desktop_drop.dart';
import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_editor/controller/recent_theme_state.dart';
import 'package:flutter_editor/controller/theme_state.dart';
import 'package:flutter_editor/pages/theme_edit_page.dart';
import 'package:flutter_editor/widgets/buttons.dart';
import 'package:flutter_editor/widgets/tooltip.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ThemeController themeController = Get.find<ThemeController>();
  final RecentThemeController recentThemeController =
      Get.put(RecentThemeController());
  @override
  Widget build(BuildContext context) {
    return FluentTheme(
      data: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF201B2F),
        accentColor: magenta,
      ),
      child: ScaffoldPage(
        header: const Center(
            child: Text(
          'LOCKSCREEN EDITOR BY SURAJ',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
        content: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() {
                return Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 30),
                  child: SizedBox(
                    width: 300,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 2 / 4,
                        ),
                        itemCount: recentThemeController.recentList.length,
                        itemBuilder: (context, i) {
                          var themeData = recentThemeController.recentList[
                              recentThemeController.recentList.length - i - 1];
                          return GestureDetector(
                            onTap: () {
                              themeController.rootPath.value =
                                  themeData.themePath;
                              themeController.setDragThemeDetails();
                              getTooltip(
                            "${themeController.name.string} imported", context);
                              Get.to(() => const ThemeEditPage());
                            },
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                padding: const EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image:
                                          FileImage(File(themeData.imagePath)),
                                      fit: BoxFit.cover),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    themeData.name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                );
              }),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: FilledButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(FluentIcons.delete),
                            SizedBox(width: 10),
                            Text('History'),
                          ],
                        ),
                        onPressed: () {
                          recentThemeController.deleteFromRecent();
                          getTooltip(
                              'Close the app ! History deleted', context);
                        }),
                  ),
                  DropTarget(
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                            color: const Color(0xFFDD4C75),
                            borderRadius: BorderRadius.circular(25)),
                        child: const Center(
                            child: Text(
                          "Drop Folder Here ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                      onDragDone: (detail) {
                        var path = detail.files.first.path;
                        themeController.rootPath.value = path;
                        themeController.setDragThemeDetails();
                        recentThemeController.addToRecent(
                            name: themeController.name.string,
                            imagePath: themeController.wallPath.string,
                            themePath: themeController.rootPath.string);
                        getTooltip(
                            "${themeController.name.string} imported", context);
                        Get.to(() => const ThemeEditPage());
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
