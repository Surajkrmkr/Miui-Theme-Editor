import 'dart:io';
import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_editor/pages/theme_preview_stack2.dart';
import 'package:get/get.dart';

import '../assets/details.dart';
import '../bloc/theme_bloc.dart';
import '../constants/constants.dart';
import '../controller/assets_state.dart';
import '../controller/theme_state.dart';
import '../widgets/image_grp.dart';

// ignore: must_be_immutable
class ThemeEditPage2 extends StatelessWidget {
  ThemeEditPage2({Key? key, required this.path}) : super(key: key);
  // final Constants constants = Get.put(Constants());
  final AssetsController assetsController = Get.put(AssetsController());
  final String? path;
  bool _initialized = false;
  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      _initialized = true;
    }
    return FluentApp(
      home: FluentTheme(
        data: ThemeData.dark(),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ThemeBloc()..add(LoadConfigEvent()),
            ),
            BlocProvider(
              create: (context) => ChangedFieldCubit(),
            )
          ],
          child: BlocConsumer<ThemeBloc, ThemeState>(
            listener: (context, state) {
              if (state is LoadedConfig) {
                context.read<ThemeBloc>().add(SetThemePath(path: path));
              }
              if (state is ThemePathSet) {
                context.read<ThemeBloc>().add(LoadXml());
              }
              if (state is LoadedXml) {
                context.read<ThemeBloc>().add(LoadTheme());
              }
            },
            builder: (context, state) {
              if (state is LoadingTheme) {
                return const Text("Loading");
              } else if (state is LoadedConfig) {
                return const Text("Loading");
              } else if (state is ThemePathSet) {
                return const Text("Loading");
              } else if (state is LoadedXml) {
                return const Text("Loading");
              } else if (state is LoadedTheme) {
                final bloc = context.read<ThemeBloc>();
                final varDict = state.data;
                return NavigationView(
                    pane: NavigationPane(
                      selected: 0,
                      items: [
                        PaneItem(
                            icon: const Icon(FluentIcons.skype_circle_clock),
                            title: const Text(
                              'TIME',
                            ),
                            mouseCursor: SystemMouseCursors.click),
                      ],

                      /// Called whenever the current index changes
                      // onChanged: (i) => setState(() => index = i),
                      displayMode: PaneDisplayMode.top,
                    ),
                    content: Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 20, right: 20, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      context.read<ThemeBloc>().name!,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                // ThemeMainStack(),
                                previewStack(context)
                                // isRulerOpen ? const GridLines() : Container(),
                              ],
                            ),
                            // textfield for offsets
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 20),
                              child: SingleChildScrollView(
                                child: SizedBox(
                                    width: 550,
                                    child: Column(
                                      children: context
                                          .read<ThemeBloc>()
                                          .config!
                                          .time!
                                          .map((e) {
                                        return Row(
                                            children: e.field!.map((field) {
                                          final dict = context
                                              .read<ThemeBloc>()
                                              .varDictFromManifest;
                                          return SizedBox(
                                            width: 80,
                                            child: TextBox(
                                              controller: TextEditingController(
                                                  text: dict![field.name!]
                                                      .toString()),
                                              placeholder: field.name,
                                              keyboardType:
                                                  TextInputType.number,
                                              onChanged: (e) {
                                                context.read<ThemeBloc>().add(
                                                    ChangeField(
                                                        key: field.name!,
                                                        value: e));
                                              },
                                            ),
                                          );
                                        }).toList());
                                      }).toList(),
                                    )),
                              ),
                            ),
                          ]),
                    ));
              } else {
                return Container();
              }
            },
          ),
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
