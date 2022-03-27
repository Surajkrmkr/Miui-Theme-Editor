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
    return ((Constants.sh / 2) * themeController.ratio) +
        double.parse(yAlign.text) * themeController.ratio -
        ((height / 2) * themeController.ratio);
  }

  double getLeft(xAlign, width) {
    return ((Constants.sw / 2) * themeController.ratio) +
        double.parse(xAlign.text) * themeController.ratio -
        ((width) * themeController.ratio);
  }

  double getLeft2(xAlign, width) {
    return ((Constants.sw / 2) * themeController.ratio) +
        double.parse(xAlign.text) * themeController.ratio -
        ((width / 2) * themeController.ratio);
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
              //Grid
              // Container(
              //     height: Constants.sh * themeController.ratio,
              //     width: 5,
              //     color: Color.fromARGB(12, 255, 255, 255).withOpacity(0.4)),
              // Container(
              //     height: 5,
              //     width: Constants.sw * themeController.ratio,
              //     color: Color.fromARGB(12, 255, 255, 255).withOpacity(0.4)),

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
                          SizedBox(width: 10 * themeController.ratio),
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
                          SizedBox(width: 10 * themeController.ratio),
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
                          SizedBox(width: 10 * themeController.ratio),
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
                          SizedBox(width: 10 * themeController.ratio),
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
                          SizedBox(width: 10 * themeController.ratio),
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
                          SizedBox(width: 10 * themeController.ratio),
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
                              SizedBox(width: 7 * themeController.ratio),
                              AssetImageWidget(
                                  name: "calender\\week_1", height: 50),
                              SizedBox(width: 7 * themeController.ratio),
                              AssetImageWidget(
                                  name: "calender\\week_2_1", height: 50),
                              SizedBox(width: 7 * themeController.ratio),
                              AssetImageWidget(
                                  name: "calender\\week_3", height: 50),
                              SizedBox(width: 7 * themeController.ratio),
                              AssetImageWidget(
                                  name: "calender\\week_4", height: 50),
                            ],
                          ),
                          SizedBox(
                              height: double.parse(
                                      textBoxController.diffCalender().text) *
                                  themeController.ratio),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Time2ImageWidget(
                                  int1: 'calender\\time_0', height: 70),
                              Time2ImageWidget(
                                  int1: 'calender\\time_6', height: 70),
                              SizedBox(width: 40 * themeController.ratio),
                              Time2ImageWidget(
                                  int1: 'calender\\time_0', height: 70),
                              Time2ImageWidget(
                                  int1: 'calender\\time_7', height: 70),
                              SizedBox(width: 40 * themeController.ratio),
                              Time2ImageWidget(
                                  int1: 'calender\\time_0_1', height: 70),
                              Time2ImageWidget(
                                  int1: 'calender\\time_8_1', height: 70),
                              SizedBox(width: 40 * themeController.ratio),
                              Time2ImageWidget(
                                  int1: 'calender\\time_0', height: 70),
                              Time2ImageWidget(
                                  int1: 'calender\\time_9', height: 70),
                              SizedBox(width: 40 * themeController.ratio),
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
                          SizedBox(width: 10 * themeController.ratio),
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
                left: ((Constants.sw / 2) * themeController.ratio) +
                    double.parse(textBoxController.xBtrAlign.value.text) *
                        themeController.ratio -
                    ((constants.timePngWidth.value +
                            constants.timePngWidth.value / 2) *
                        themeController.ratio),
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
                          SizedBox(width: 10 * themeController.ratio),
                          TimeImageWidget(
                              int1: 'time_0',
                              height: constants.timePngHeight(),
                              sequence: double.parse(
                                      textBoxController.seqBtr().value.text)
                                  .toInt()),
                          SizedBox(width: 10 * themeController.ratio),
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
              Positioned(
                top: getTop(
                    textBoxController.yCamAlign(), constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xCamAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleCam()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleCam()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaCam()),
                      child: AssetImageWidget(
                        name: 'icon\\cam',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Music pngs
              Positioned(
                top: getTop(textBoxController.yMusicAlign(),
                    constants.iconHeight.value),
                left: getLeft2(textBoxController.xMusicAlign(),
                    constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleMusic()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleMusic()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaMusic()),
                      child: AssetImageWidget(
                        name: 'icon\\music',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // themes pngs
              Positioned(
                top: getTop(textBoxController.yThemesAlign(),
                    constants.iconHeight.value),
                left: getLeft2(textBoxController.xThemesAlign(),
                    constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleThemes()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleThemes()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaThemes()),
                      child: AssetImageWidget(
                        name: 'icon\\themes',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Settings pngs
              Positioned(
                top: getTop(textBoxController.ySettingsAlign(),
                    constants.iconHeight.value),
                left: getLeft2(textBoxController.xSettingsAlign(),
                    constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleSettings()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleSettings()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaSettings()),
                      child: AssetImageWidget(
                        name: 'icon\\settings',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Calc pngs
              Positioned(
                top: getTop(
                    textBoxController.yCalcAlign(), constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xCalcAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleCalc()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleCalc()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaCalc()),
                      child: AssetImageWidget(
                        name: 'icon\\calc',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Clock pngs
              Positioned(
                top: getTop(textBoxController.yClockAlign(),
                    constants.iconHeight.value),
                left: getLeft2(textBoxController.xClockAlign(),
                    constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleClock()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleClock()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaClock()),
                      child: AssetImageWidget(
                        name: 'icon\\clock',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Scanner pngs
              Positioned(
                top: getTop(textBoxController.yScannerAlign(),
                    constants.iconHeight.value),
                left: getLeft2(textBoxController.xScannerAlign(),
                    constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleScanner()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleScanner()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaScanner()),
                      child: AssetImageWidget(
                        name: 'icon\\scan',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Compass pngs
              Positioned(
                top: getTop(textBoxController.yCompassAlign(),
                    constants.iconHeight.value),
                left: getLeft2(textBoxController.xCompassAlign(),
                    constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleCompass()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleCompass()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaCompass()),
                      child: AssetImageWidget(
                        name: 'icon\\compass',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Recorder pngs
              Positioned(
                top: getTop(textBoxController.yRecorderAlign(),
                    constants.iconHeight.value),
                left: getLeft2(textBoxController.xRecorderAlign(),
                    constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleRecorder()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleRecorder()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaRecorder()),
                      child: AssetImageWidget(
                        name: 'icon\\recorder',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Radio pngs
              Positioned(
                top: getTop(textBoxController.yRadioAlign(),
                    constants.iconHeight.value),
                left: getLeft2(textBoxController.xRadioAlign(),
                    constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleRadio()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleRadio()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaRadio()),
                      child: AssetImageWidget(
                        name: 'icon\\radio',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // File Pngs
              Positioned(
                top: getTop(
                    textBoxController.yFileAlign(), constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xFileAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleFile()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleFile()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaFile()),
                      child: AssetImageWidget(
                        name: 'icon\\file',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Gallery Pngs
              Positioned(
                top: getTop(textBoxController.yGalleryAlign(),
                    constants.iconHeight.value),
                left: getLeft2(textBoxController.xGalleryAlign(),
                    constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleGallery()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleGallery()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaGallery()),
                      child: AssetImageWidget(
                        name: 'icon\\gallery',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Security Pngs
              Positioned(
                top: getTop(textBoxController.ySecurityAlign(),
                    constants.iconHeight.value),
                left: getLeft2(textBoxController.xSecurityAlign(),
                    constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleSecurity()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleSecurity()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaSecurity()),
                      child: AssetImageWidget(
                        name: 'icon\\security',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
