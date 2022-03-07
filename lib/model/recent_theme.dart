import 'package:hive/hive.dart';

part 'recent_theme.g.dart';


@HiveType(typeId: 0)
class RecentTheme extends HiveObject {

  @HiveField(0)
  String? name;

  @HiveField(1)
  String? imagePath;

  @HiveField(2)
  String? themePath;
}