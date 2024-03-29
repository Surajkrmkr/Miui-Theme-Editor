import 'dart:io';

import 'package:desktop_drop/desktop_drop.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_editor/controller/recent_theme_state.dart';
import 'package:flutter_editor/controller/theme_state.dart';
import 'package:flutter_editor/pages/theme_edit_page.dart';
import 'package:flutter_editor/widgets/buttons.dart';
import 'package:flutter_editor/widgets/tooltip.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

bool darkMode = false;

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
  void initState() {
    var box = Hive.box('darkMode');
    var isDark = box.get('isDark');
    setState(() {
      darkMode = isDark ?? false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FluentTheme(
      data: ThemeData(
        brightness: darkMode ? Brightness.dark : Brightness.light,
        scaffoldBackgroundColor:
            darkMode ? const Color(0xFF282629) : Colors.white,
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
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
                                recentThemeController.recentList.length -
                                    i -
                                    1];
                            return GestureDetector(
                              onTap: () {
                                try {
                                  themeController.rootPath.value =
                                      themeData.themePath;
                                  themeController.setDragThemeDetails();
                                  getTooltip(
                                      "${themeController.name.string} imported",
                                      context);
                                  Get.to(() => const ThemeEditPage());
                                } on Exception catch (e) {
                                  getTooltip(
                                      "Error occured $e", context);
                                }
                              },
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  padding: const EdgeInsets.only(bottom: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: FileImage(
                                            File(themeData.imagePath)),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      themeData.name,
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
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
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: RadioButton(
                      checked: darkMode,
                      onChanged: (bool value) {
                        setState(() {
                          darkMode = value;
                          var box = Hive.box('darkMode');
                          box.put('isDark', value);
                        });
                      },
                      content: const Text(
                        "DarkMode",
                      ),
                    ),
                  ),
                  DropTarget(
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                            color: const Color(0xFFB26CD5),
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
