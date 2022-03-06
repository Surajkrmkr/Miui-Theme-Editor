import 'package:desktop_drop/desktop_drop.dart';
import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_editor/controller/theme_state.dart';
import 'package:flutter_editor/pages/theme_edit_page.dart';
import 'package:flutter_editor/widgets/buttons.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ThemeController themeController = Get.find<ThemeController>();
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
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Button(
                  style: ButtonStyle(
                    backgroundColor: ButtonStyle(
                            backgroundColor:
                                ButtonState.all(const Color(0xFFDD4C75)))
                        .backgroundColor,
                    padding: ButtonStyle(
                            padding: ButtonState.all(const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40)))
                        .padding,
                    shape: ButtonStyle(
                            shape: ButtonState.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(500))))
                        .shape,
                  ),
                  child: const Text('OPEN',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  onPressed: () async {
                    final file = OpenFilePicker()
                      ..filterSpecification = {
                        'Wallpaper (*.jpg)': '*.jpg',
                      }
                      ..defaultFilterIndex = 0
                      ..defaultExtension = 'jpg'
                      ..title = 'Select a Wallpaper';

                    final result = file.getFile();
                    if (result != null) {
                      themeController.wallPath.value = result.path;
                      themeController.setthemeDetails();
                    }
                    Get.to(() => const ThemeEditPage());
                  },
                ),
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
                    Get.to(() => const ThemeEditPage());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
