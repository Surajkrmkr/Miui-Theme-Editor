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
                              int1: 'week_2',
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

              // Chrome pngs
              Positioned(
                top: getTop(
                    textBoxController.yChromeAlign(), constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xChromeAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleChrome()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleChrome()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaChrome()),
                      child: AssetImageWidget(
                        name: 'icon\\chrome',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Fb pngs
              Positioned(
                top: getTop(textBoxController.yFbAlign(), constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xFbAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleFb()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleFb()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaFb()),
                      child: AssetImageWidget(
                        name: 'icon\\fb',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Wp pngs
              Positioned(
                top: getTop(textBoxController.yWpAlign(), constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xWpAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleWp()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleWp()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaWp()),
                      child: AssetImageWidget(
                        name: 'icon\\wp',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Twt pngs
              Positioned(
                top:
                    getTop(textBoxController.yTwtAlign(), constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xTwtAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleTwt()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleTwt()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaTwt()),
                      child: AssetImageWidget(
                        name: 'icon\\twt',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Cam pngs
              Positioned(
                top:
                    getTop(textBoxController.yCamAlign(), constants.iconHeight.value),
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

              // Dialer pngs
              Positioned(
                top: getTop(textBoxController.yDialerAlign(),
                    constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xDialerAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleDialer()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleDialer()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaDialer()),
                      child: AssetImageWidget(
                        name: 'icon\\dialer',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Contact pngs
              Positioned(
                top: getTop(textBoxController.yContactAlign(),
                    constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xContactAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleContact()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleContact()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaContact()),
                      child: AssetImageWidget(
                        name: 'icon\\contact',
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
                left: getLeft2(
                    textBoxController.xMusicAlign(), constants.iconHeight.value),
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
                left: getLeft2(
                    textBoxController.xThemesAlign(), constants.iconHeight.value),
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
                left: getLeft2(
                    textBoxController.xSettingsAlign(), constants.iconHeight.value),
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

              // Insta pngs
              Positioned(
                top: getTop(textBoxController.yInstaAlign(),
                    constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xInstaAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleInsta()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleInsta()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaInsta()),
                      child: AssetImageWidget(
                        name: 'icon\\insta',
                        height: constants.iconHeight.value,
                      ),
                    ),
                  ),
                ),
              ),

              // Telegram pngs
              Positioned(
                top: getTop(textBoxController.yTelegramAlign(),
                    constants.iconHeight.value),
                left: getLeft2(
                    textBoxController.xTelegramAlign(), constants.iconHeight.value),
                child: Transform.rotate(
                  angle: getAngle(textBoxController.angleTelegram()),
                  child: Transform.scale(
                    scale: getScale(textBoxController.scaleTelegram()),
                    child: Opacity(
                      opacity: getAlpha(textBoxController.alphaTelegram()),
                      child: AssetImageWidget(
                        name: 'icon\\telegram',
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
