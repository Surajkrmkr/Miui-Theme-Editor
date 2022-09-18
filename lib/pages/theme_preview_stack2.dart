import 'dart:io';
import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../assets/details.dart';
import '../bloc/theme_bloc.dart';
import '../constants/constants.dart';
import '../controller/theme_state.dart';
import '../widgets/image_grp.dart';

class PreviewStack extends StatelessWidget {
  const PreviewStack({Key? key}) : super(key: key);
  // final Constants constants = Get.find<Constants>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.actualHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            final bloc = context.read<ThemeBloc>();
            // final changes = context.read<ChangedFieldCubit>().state;
            if (state is LoadedTheme) {
              final varDict = state.data;
              return Stack(
                alignment: Alignment.center,
                children: [
                  Image.memory(File(bloc.wallPath!).readAsBytesSync()),
                  Image.memory(
                      File("${bloc.rootPath}\\${AssetsDetails.themeBg}")
                          .readAsBytesSync()),

                  // Time pngs
                  Positioned(
                    top: getTop(varDict!["y1Align"], 169),
                    left: getLeft(varDict["x1Align"], 107),
                    child: Transform.rotate(
                      angle: getAngle(varDict["angle1"]),
                      child: Transform.scale(
                        scale: getScale(varDict["scale1"]),
                        child: Opacity(
                          opacity: getAlpha(varDict["alpha1"]),
                          child: Row(
                            children: [
                              TimeImageWidget(
                                  int1: 'time_0',
                                  height: 169,
                                  sequence:
                                      double.parse(varDict["seq1"]).toInt()),
                              SizedBox(width: 10 * ThemeController.ratio),
                              TimeImageWidget(
                                  int1: 'time_2',
                                  height: 169,
                                  sequence:
                                      double.parse(varDict["seq1"]).toInt()),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            return const Text("Loading");
          },
        ),
      ),
    );
  }

  double getTop(yAlign, height) {
    return ((Constants.sh / 2) * ThemeController.ratio) +
        double.parse(yAlign) * ThemeController.ratio -
        ((height / 2) * ThemeController.ratio);
  }

  double getLeft(xAlign, width) {
    return ((Constants.sw / 2) * ThemeController.ratio) +
        double.parse(xAlign) * ThemeController.ratio -
        ((width) * ThemeController.ratio);
  }

  double getLeft2(xAlign, width) {
    return ((Constants.sw / 2) * ThemeController.ratio) +
        double.parse(xAlign) * ThemeController.ratio -
        ((width / 2) * ThemeController.ratio);
  }

  double getAngle(angle) {
    return (360 - double.parse(angle)) * pi / 180;
  }

  double getScale(scale) {
    return double.parse(scale);
  }

  double getAlpha(alpha) {
    return double.parse(alpha);
  }
}
