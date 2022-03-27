import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_editor/constants/constants.dart';
import 'package:flutter_editor/controller/theme_state.dart';
import 'package:flutter_editor/pages/homepage.dart';

class GridLines extends StatelessWidget {
  const GridLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Constants.actualHeight + 18,
        width: 60,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // gridLine(0),
            for (int i = 0; i < Constants.sh ~/ 2; i += 100)
              gridLine(i.toDouble(), false),
            for (int i = 100; i < Constants.sh ~/ 2; i += 100)
              gridLine(i.toDouble(), true),
          ],
        ));
  }

  Widget gridLine(double? val, bool? isDown) {
    return Positioned(
      top: isDown!
          ? (Constants.sh / 2) * ThemeController.ratio -
              val! * ThemeController.ratio
          : (Constants.sh / 2) * ThemeController.ratio +
              val! * ThemeController.ratio,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 15),
          Container(
            width: 20,
            height: 2,
            decoration: BoxDecoration(
              color: darkMode ? Colors.white : Colors.black,
              borderRadius: BorderRadius.circular(3000),
            ),
          ),
          const SizedBox(width: 5),
          SizedBox(
            width: 40,
            child: Text(
              isDown
                  ? '-' + (val.toInt()).toString()
                  : (val.toInt()).toString(),
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
