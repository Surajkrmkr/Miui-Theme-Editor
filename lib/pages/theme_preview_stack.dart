import 'dart:io';
import 'dart:math';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_editor/assets/details.dart';
import 'package:flutter_editor/constants/constants.dart';
import 'package:flutter_editor/controller/assets_state.dart';
import 'package:flutter_editor/controller/theme_state.dart';
import 'package:flutter_editor/widgets/imageGrp.dart';
import 'package:get/get.dart';

class ThemeMainStack extends StatelessWidget {
  ThemeMainStack({
    Key? key,
  }) : super(key: key);

  final ThemeController themeController = Get.find<ThemeController>();
  final AssetsController textBoxController = Get.find<AssetsController>();
  final Constants constants = Get.find<Constants>();

  double getTop(yAlign, height) {
    return ((Constants.sh / 2) * ThemeController.ratio) +
        double.parse(yAlign.text) * ThemeController.ratio -
        ((height / 2) * ThemeController.ratio);
  }

  double getLeft(xAlign, width) {
    return ((Constants.sw / 2) * ThemeController.ratio) +
        double.parse(xAlign.text) * ThemeController.ratio -
        ((width) * ThemeController.ratio);
  }

  double getLeft2(xAlign, width) {
    return ((Constants.sw / 2) * ThemeController.ratio) +
        double.parse(xAlign.text) * ThemeController.ratio -
        ((width / 2) * ThemeController.ratio);
  }

  double getAngle(angle) {
    return (360 - double.parse(angle.value.text)) * pi / 180;
  }

  double getScale(scale) {
    return double.parse(scale.value.text);
  }

  double getAlpha(alpha) {
    return double.parse(alpha.value.text);
  }

  Widget iconShortcut(
      TextEditingController? yAlign,
      TextEditingController? xAlign,
      TextEditingController? angle,
      TextEditingController? scale,
      TextEditingController? alpha,
      double? height,
      String? name) {
    return Positioned(
      top: getTop(yAlign, height),
      left: getLeft2(
        xAlign,
        height,
      ),
      child: Transform.rotate(
        angle: getAngle(angle),
        child: Transform.scale(
          scale: getScale(scale),
          child: Opacity(
            opacity: getAlpha(alpha),
            child: AssetImageWidget(
              name: 'icon\\$name',
              height: height!,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: Constants.actualHeight,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.file(File(themeController.wallPath.string)),
              Image.file(File(themeController.rootPath.string +
                  "\\" +
                  AssetsDetails.themeBg)),
              // Grid
              // Container(
              //     height: Constants.sh * ThemeController.ratio,
              //     width: 5,
              //     color: const Color.fromARGB(12, 255, 255, 255).withOpacity(0.4)),
              // Container(
              //     height: 5,
              //     width: Constants.sw * ThemeController.ratio,
              //     color: const Color.fromARGB(12, 255, 255, 255).withOpacity(0.4)),

              // Unlock pngs
              if (textBoxController.lockSlide.value)
                Positioned(
                  bottom: double.parse(textBoxController.lockSlideDown().text) *
                          ThemeController.ratio -
                      constants.sliderHeight / 2 * ThemeController.ratio,
                  child: AssetImageWidget(
                    name: 'slider',
                    height: constants.sliderHeight.value,
                  ),
                ),
              if (textBoxController.lockSlide.value)
                Positioned(
                  bottom: double.parse(textBoxController.lockSlideDown().text) *
                          ThemeController.ratio -
                      constants.unlHeight / 2 * ThemeController.ratio,
                  left: double.parse(textBoxController.lockSideUnlLeft().text) *
                          ThemeController.ratio -
                      constants.unlHeight / 2 * ThemeController.ratio,
                  child: AssetImageWidget(
                    name: 'unl',
                    height: constants.unlHeight.value,
                  ),
                ),
              if (textBoxController.lockPress.value)
                Positioned(
                  top: getTop(textBoxController.yLockPressAlign(),
                      constants.unHeight.value),
                  left: getLeft2(textBoxController.xLockPressAlign(),
                      constants.unHeight.value),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleLockPress()),
                    child: Row(
                      children: [
                        AssetImageWidget(
                          name: 'un',
                          height: constants.unHeight.value,
                        ),
                      ],
                    ),
                  ),
                ),

              // Time pngs
              Positioned(
                top: getTop(
                    textBoxController.y1Align(), constants.timePngHeight.value),
                left: getLeft(
                    textBoxController.x1Align(), constants.timePngWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angle1()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scale1()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alpha1()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'time_0',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seq1().value.text)
                                  .toInt()),
                          SizedBox(width: 10 * ThemeController.ratio),
                          TimeImageWidget(
                              int1: 'time_2',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seq1().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: getTop(
                    textBoxController.y2Align(), constants.timePngHeight.value),
                left: getLeft(
                    textBoxController.x2Align(), constants.timePngWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angle2()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scale2()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alpha2()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'time_3',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seq2().value.text)
                                  .toInt()),
                          SizedBox(width: 10 * ThemeController.ratio),
                          TimeImageWidget(
                              int1: 'time_6',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seq2().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: getTop(
                    textBoxController.y3Align(), constants.timePngHeight.value),
                left: getLeft(
                    textBoxController.x3Align(), constants.timePngWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angle3()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scale3()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alpha3()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'time_0',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seq3().value.text)
                                  .toInt()),
                          SizedBox(width: 10 * ThemeController.ratio),
                          TimeImageWidget(
                              int1: 'time_0',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seq3().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Dot pngs
              Positioned(
                top: getTop(textBoxController.yDotAlign(),
                    constants.timePngHeight.value),
                left: getLeft2(textBoxController.xDotAlign(),
                    constants.timePngWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleDot()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleDot()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaDot()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'time_dot',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqDot().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // AM pngs
              Positioned(
                top: getTop(
                    textBoxController.yAMAlign(), constants.amPngHeight.value),
                left: getLeft2(
                    textBoxController.xAMAlign(), constants.amPngWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleAM()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleAM()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaAM()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'am_0',
                              height: constants.amPngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqAM().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Week pngs
              Positioned(
                top: getTop(textBoxController.yWeekAlign(),
                    constants.weekPngHeight.value),
                left: getLeft2(textBoxController.xWeekAlign(),
                    constants.weekPngWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleWeek()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleWeek()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaWeek()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'week_3',
                              height: constants.weekPngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqWeek().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Date pngs
              Positioned(
                top: getTop(textBoxController.yDateAlign(),
                    constants.timePngHeight.value),
                left: getLeft(textBoxController.xDateAlign(),
                    constants.timePngWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleDate()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleDate()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaDate()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'time_0',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqDate().value.text)
                                  .toInt()),
                          SizedBox(width: 10 * ThemeController.ratio),
                          TimeImageWidget(
                              int1: 'time_8',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqDate().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Year pngs
              Positioned(
                top: getTop(textBoxController.yYearAlign(),
                    constants.timePngHeight.value),
                left: getLeft(textBoxController.xYearAlign(),
                    constants.timePngWidth.value * 2),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleYear()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleYear()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaYear()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'time_2',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqYear().value.text)
                                  .toInt()),
                          SizedBox(width: 10 * ThemeController.ratio),
                          TimeImageWidget(
                              int1: 'time_0',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqYear().value.text)
                                  .toInt()),
                          TimeImageWidget(
                              int1: 'time_2',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqYear().value.text)
                                  .toInt()),
                          SizedBox(width: 10 * ThemeController.ratio),
                          TimeImageWidget(
                              int1: 'time_2',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqYear().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Month pngs
              Positioned(
                top: getTop(textBoxController.yMonthAlign(),
                    constants.monthPngHeight.value),
                left: getLeft2(textBoxController.xMonthAlign(),
                    constants.monthPngWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleMonth()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleMonth()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaMonth()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'mo_2',
                              height: constants.monthPngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqMonth().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Calender pngs
              Positioned(
                top: getTop(textBoxController.yCalenderAlign(), 200),
                left: getLeft2(textBoxController.xCalenderAlign(), 630),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleCalender()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleCalender()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaCalender()),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              AssetImageWidget(
                                  name: "calender\\week_0", height: 50),
                              SizedBox(width: 7 * ThemeController.ratio),
                              AssetImageWidget(
                                  name: "calender\\week_1", height: 50),
                              SizedBox(width: 7 * ThemeController.ratio),
                              AssetImageWidget(
                                  name: "calender\\week_2_1", height: 50),
                              SizedBox(width: 7 * ThemeController.ratio),
                              AssetImageWidget(
                                  name: "calender\\week_3", height: 50),
                              SizedBox(width: 7 * ThemeController.ratio),
                              AssetImageWidget(
                                  name: "calender\\week_4", height: 50),
                            ],
                          ),
                          SizedBox(
                            height: double.parse(
                                    textBoxController.diffCalender().text) *
                                ThemeController.ratio,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Time2ImageWidget(
                                  int1: 'calender\\time_0', height: 70),
                              Time2ImageWidget(
                                  int1: 'calender\\time_6', height: 70),
                              SizedBox(width: 40 * ThemeController.ratio),
                              Time2ImageWidget(
                                  int1: 'calender\\time_0', height: 70),
                              Time2ImageWidget(
                                  int1: 'calender\\time_7', height: 70),
                              SizedBox(width: 40 * ThemeController.ratio),
                              Time2ImageWidget(
                                  int1: 'calender\\time_0_1', height: 70),
                              Time2ImageWidget(
                                  int1: 'calender\\time_8_1', height: 70),
                              SizedBox(width: 40 * ThemeController.ratio),
                              Time2ImageWidget(
                                  int1: 'calender\\time_0', height: 70),
                              Time2ImageWidget(
                                  int1: 'calender\\time_9', height: 70),
                              SizedBox(width: 40 * ThemeController.ratio),
                              Time2ImageWidget(
                                  int1: 'calender\\time_1', height: 70),
                              Time2ImageWidget(
                                  int1: 'calender\\time_0', height: 70),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Temp pngs
              Positioned(
                top: getTop(textBoxController.yTempAlign(),
                    constants.timePngHeight.value),
                left: getLeft(textBoxController.xTempAlign(),
                    constants.timePngWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleTemp()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleTemp()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaTemp()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'time_2',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqTemp().value.text)
                                  .toInt()),
                          SizedBox(width: 10 * ThemeController.ratio),
                          TimeImageWidget(
                              int1: 'time_4',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqTemp().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Weathericon pngs
              Positioned(
                top: getTop(textBoxController.yWeatherIconAlign(),
                    constants.weatherIconHeight.value),
                left: getLeft2(textBoxController.xWeatherIconAlign(),
                    constants.weatherIconWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleWeatherIcon()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleWeatherIcon()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaWeatherIcon()),
                      child: Row(
                        children: [
                          AssetImageWidget(
                            name: 'weatherMini_src\\weather_1',
                            height: constants.weatherIconHeight(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // btr pngs
              Positioned(
                top: getTop(textBoxController.yBtrAlign(),
                    constants.timePngHeight.value),
                left: ((Constants.sw / 2) * ThemeController.ratio) +
                    double.parse(textBoxController.xBtrAlign.value.text) *
                        ThemeController.ratio -
                    ((constants.timePngWidth.value +
                            constants.timePngWidth.value / 2) *
                        ThemeController.ratio),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleBtr()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleBtr()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaBtr()),
                      child: Row(
                        children: [
                          TimeImageWidget(
                              int1: 'time_1',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqBtr().value.text)
                                  .toInt()),
                          SizedBox(width: 10 * ThemeController.ratio),
                          TimeImageWidget(
                              int1: 'time_0',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqBtr().value.text)
                                  .toInt()),
                          SizedBox(width: 10 * ThemeController.ratio),
                          TimeImageWidget(
                              int1: 'time_0',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqBtr().value.text)
                                  .toInt()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // music bg pngs
              Positioned(
                top: getTop(textBoxController.yMusicBgAlign(),
                    constants.musicBgHeight.value),
                left: getLeft2(textBoxController.xMusicBgAlign(),
                    constants.musicBgWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleMusicBg()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleMusicBg()) /
                        constants.musicBgHeight(),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaMusicBg()),
                      child: AssetImageWidget(
                        name: 'music\\bg',
                        height: constants.musicBgHeight(),
                      ),
                    ),
                  ),
                ),
              ),

              // nextbtn pngs
              Positioned(
                top: getTop(textBoxController.yNextBtnAlign(),
                    constants.nextBtnHeight.value),
                left: getLeft2(textBoxController.xNextBtnAlign(),
                    constants.nextBtnWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleNextBtn()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleBtn()) /
                        constants.nextBtnHeight(),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaNextBtn()),
                      child: AssetImageWidget(
                        name: 'music\\next',
                        height: constants.nextBtnHeight(),
                      ),
                    ),
                  ),
                ),
              ),

              // prevbtn pngs
              Positioned(
                top: getTop(textBoxController.yPrevBtnAlign(),
                    constants.prevBtnHeight.value),
                left: getLeft2(textBoxController.xPrevBtnAlign(),
                    constants.prevBtnWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.anglePrevBtn()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleBtn()) /
                        constants.prevBtnHeight(),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaPrevBtn()),
                      child: AssetImageWidget(
                        name: 'music\\prev',
                        height: constants.prevBtnHeight(),
                      ),
                    ),
                  ),
                ),
              ),

              // Analog pngs
              Positioned(
                top: getTop(textBoxController.yAnalogAlign(),
                    constants.analogBgHeight.value),
                left: getLeft2(textBoxController.xAnalogAlign(),
                    constants.analogBgWidth.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleAnalog()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.analogScale()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaAnalog()),
                      child: AssetImageWidget(
                        name: 'clock_src\\clock1\\bg',
                        height: constants.analogBgHeight(),
                      ),
                    ),
                  ),
                ),
              ),

              // Cam pngs
              iconShortcut(
                  textBoxController.yCamAlign(),
                  textBoxController.xCamAlign(),
                  textBoxController.angleCam(),
                  textBoxController.scaleCam(),
                  textBoxController.alphaCam(),
                  constants.iconHeight.value,
                  'cam'),

              // Music pngs
              iconShortcut(
                  textBoxController.yMusicAlign(),
                  textBoxController.xMusicAlign(),
                  textBoxController.angleMusic(),
                  textBoxController.scaleMusic(),
                  textBoxController.alphaMusic(),
                  constants.iconHeight.value,
                  'music'),

              // themes pngs
              iconShortcut(
                  textBoxController.yThemesAlign(),
                  textBoxController.xThemesAlign(),
                  textBoxController.angleThemes(),
                  textBoxController.scaleThemes(),
                  textBoxController.alphaThemes(),
                  constants.iconHeight.value,
                  'themes'),

              // Settings pngs
              iconShortcut(
                  textBoxController.ySettingsAlign(),
                  textBoxController.xSettingsAlign(),
                  textBoxController.angleSettings(),
                  textBoxController.scaleSettings(),
                  textBoxController.alphaSettings(),
                  constants.iconHeight.value,
                  'settings'),

              // Calc pngs
              iconShortcut(
                  textBoxController.yCalcAlign(),
                  textBoxController.xCalcAlign(),
                  textBoxController.angleCalc(),
                  textBoxController.scaleCalc(),
                  textBoxController.alphaCalc(),
                  constants.iconHeight.value,
                  'calc'),

              // Clock pngs
              iconShortcut(
                  textBoxController.yClockAlign(),
                  textBoxController.xClockAlign(),
                  textBoxController.angleClock(),
                  textBoxController.scaleClock(),
                  textBoxController.alphaClock(),
                  constants.iconHeight.value,
                  'clock'),

              // Scanner pngs
              iconShortcut(
                  textBoxController.yScannerAlign(),
                  textBoxController.xScannerAlign(),
                  textBoxController.angleScanner(),
                  textBoxController.scaleScanner(),
                  textBoxController.alphaScanner(),
                  constants.iconHeight.value,
                  'scan'),

              // Compass pngs
              iconShortcut(
                  textBoxController.yCompassAlign(),
                  textBoxController.xCompassAlign(),
                  textBoxController.angleCompass(),
                  textBoxController.scaleCompass(),
                  textBoxController.alphaCompass(),
                  constants.iconHeight.value,
                  'compass'),

              // Recorder pngs
              iconShortcut(
                  textBoxController.yRecorderAlign(),
                  textBoxController.xRecorderAlign(),
                  textBoxController.angleRecorder(),
                  textBoxController.scaleRecorder(),
                  textBoxController.alphaRecorder(),
                  constants.iconHeight.value,
                  'recorder'),

              // Radio pngs
              iconShortcut(
                  textBoxController.yRadioAlign(),
                  textBoxController.xRadioAlign(),
                  textBoxController.angleRadio(),
                  textBoxController.scaleRadio(),
                  textBoxController.alphaRadio(),
                  constants.iconHeight.value,
                  'radio'),

              // File Pngs
              iconShortcut(
                  textBoxController.yFileAlign(),
                  textBoxController.xFileAlign(),
                  textBoxController.angleFile(),
                  textBoxController.scaleFile(),
                  textBoxController.alphaFile(),
                  constants.iconHeight.value,
                  'file'),

              // Gallery Pngs
              iconShortcut(
                  textBoxController.yGalleryAlign(),
                  textBoxController.xGalleryAlign(),
                  textBoxController.angleGallery(),
                  textBoxController.scaleGallery(),
                  textBoxController.alphaGallery(),
                  constants.iconHeight.value,
                  'gallery'),

              // Security Pngs
              iconShortcut(
                  textBoxController.ySecurityAlign(),
                  textBoxController.xSecurityAlign(),
                  textBoxController.angleSecurity(),
                  textBoxController.scaleSecurity(),
                  textBoxController.alphaSecurity(),
                  constants.iconHeight.value,
                  'security'),
            ],
          ),
        ),
      );
    });
  }
}
