import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_editor/controller/theme_state.dart';
import 'package:flutter_editor/model/recent_theme.dart';
import 'package:flutter_editor/pages/homepage.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive
    ..init(appDocumentDirectory.path)
    ..registerAdapter(RecentThemeAdapter());
  windowManager.waitUntilReadyToShow().then((_) async {
    // Hide window title bar
    await windowManager.setSize(const Size(1000, 700));
    await windowManager.setMinimumSize(const Size(1000, 700));
    await windowManager.center();
    await windowManager.show();
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ThemeController themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(themeMode: ThemeMode.dark, home: HomePage());
  }
}
