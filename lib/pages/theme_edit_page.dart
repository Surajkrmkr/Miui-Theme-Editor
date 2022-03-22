import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_editor/constants/constants.dart';
import 'package:flutter_editor/controller/assets_state.dart';
import 'package:flutter_editor/controller/theme_state.dart';
import 'package:flutter_editor/pages/homepage.dart';
import 'package:flutter_editor/pages/theme_preview_stack.dart';
import 'package:flutter_editor/widgets/save.dart';
import 'package:flutter_editor/widgets/tooltip.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/buttons.dart';

class ThemeEditPage extends StatefulWidget {
  const ThemeEditPage({Key? key}) : super(key: key);

  @override
  State<ThemeEditPage> createState() => _ThemeEditPageState();
}

class _ThemeEditPageState extends State<ThemeEditPage> {
  final Constants constants = Get.put(Constants());
  final ThemeController themeController = Get.find();
  final AssetsController assetsController = Get.put(AssetsController());
  int index = 0;
  @override
  void initState() {
    setState(() {
      fetchedDetails = SaveXml.load(themeController.rootPath.string);
      assetsController.refreshData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var pages = [
      Column(
        children: [
          inputRow(
              "Hours",
              assetsController.x1Align(),
              assetsController.y1Align(),
              assetsController.scale1(),
              assetsController.alpha1(),
              assetsController.angle1(),
              assetsController.seq1()),
          inputRow(
              "Minutes",
              assetsController.x2Align(),
              assetsController.y2Align(),
              assetsController.scale2(),
              assetsController.alpha2(),
              assetsController.angle2(),
              assetsController.seq2()),
          inputRow(
              "Seconds",
              assetsController.x3Align(),
              assetsController.y3Align(),
              assetsController.scale3(),
              assetsController.alpha3(),
              assetsController.angle3(),
              assetsController.seq3()),
          inputRow(
              "Time Dot",
              assetsController.xDotAlign(),
              assetsController.yDotAlign(),
              assetsController.scaleDot(),
              assetsController.alphaDot(),
              assetsController.angleDot(),
              assetsController.seqDot()),
          inputRow(
              "AM/PM",
              assetsController.xAMAlign(),
              assetsController.yAMAlign(),
              assetsController.scaleAM(),
              assetsController.alphaAM(),
              assetsController.angleAM(),
              assetsController.seqAM()),
          inputRow(
            "Analog",
            assetsController.xAnalogAlign(),
            assetsController.yAnalogAlign(),
            assetsController.analogScale(),
            assetsController.alphaAnalog(),
            assetsController.angleAnalog(),
            assetsController.seqAnalog(),
          ),
        ],
      ),
      Column(
        children: [
          inputRow(
              "Week Day",
              assetsController.xWeekAlign(),
              assetsController.yWeekAlign(),
              assetsController.scaleWeek(),
              assetsController.alphaWeek(),
              assetsController.angleWeek(),
              assetsController.seqWeek()),
          inputRow(
              "Date",
              assetsController.xDateAlign(),
              assetsController.yDateAlign(),
              assetsController.scaleDate(),
              assetsController.alphaDate(),
              assetsController.angleDate(),
              assetsController.seqDate()),
          inputRow(
              "Month",
              assetsController.xMonthAlign(),
              assetsController.yMonthAlign(),
              assetsController.scaleMonth(),
              assetsController.alphaMonth(),
              assetsController.angleMonth(),
              assetsController.seqMonth()),
          inputRow(
              "Weather",
              assetsController.xTempAlign(),
              assetsController.yTempAlign(),
              assetsController.scaleTemp(),
              assetsController.alphaTemp(),
              assetsController.angleTemp(),
              assetsController.seqTemp()),
          inputRow(
              "Weather Icon",
              assetsController.xWeatherIconAlign(),
              assetsController.yWeatherIconAlign(),
              assetsController.scaleWeatherIcon(),
              assetsController.alphaWeatherIcon(),
              assetsController.angleWeatherIcon(),
              assetsController.seqWeatherIcon()),
          inputRow(
              "Battery",
              assetsController.xBtrAlign(),
              assetsController.yBtrAlign(),
              assetsController.scaleBtr(),
              assetsController.alphaBtr(),
              assetsController.angleBtr(),
              assetsController.seqBtr()),
        ],
      ),
      Column(
        children: [
          inputRow(
              "Music",
              assetsController.xMusicBgAlign(),
              assetsController.yMusicBgAlign(),
              assetsController.scaleMusicBg(),
              assetsController.alphaMusicBg(),
              assetsController.angleMusicBg(),
              assetsController.seqMusicBg()),
          inputRow(
              "Prev Btn",
              assetsController.xPrevBtnAlign(),
              assetsController.yPrevBtnAlign(),
              assetsController.scaleBtn(),
              assetsController.alphaPrevBtn(),
              assetsController.anglePrevBtn(),
              assetsController.seqPrevBtn()),
          inputRow(
              "Next Btn",
              assetsController.xNextBtnAlign(),
              assetsController.yNextBtnAlign(),
              assetsController.scaleBtn(),
              assetsController.alphaNextBtn(),
              assetsController.angleNextBtn(),
              assetsController.seqNextBtn()),
        ],
      ),
      Column(
        children: [
          inputRow(
            "Themes",
            assetsController.xThemesAlign(),
            assetsController.yThemesAlign(),
            assetsController.scaleThemes(),
            assetsController.alphaThemes(),
            assetsController.angleThemes(),
            assetsController.seqThemes(),
          ),
          inputRow(
            "Settings",
            assetsController.xSettingsAlign(),
            assetsController.ySettingsAlign(),
            assetsController.scaleSettings(),
            assetsController.alphaSettings(),
            assetsController.angleSettings(),
            assetsController.seqSettings(),
          ),
          inputRow(
            "Camera",
            assetsController.xCamAlign(),
            assetsController.yCamAlign(),
            assetsController.scaleCam(),
            assetsController.alphaCam(),
            assetsController.angleCam(),
            assetsController.seqCam(),
          ),
          inputRow(
            "Music",
            assetsController.xMusicAlign(),
            assetsController.yMusicAlign(),
            assetsController.scaleMusic(),
            assetsController.alphaMusic(),
            assetsController.angleMusic(),
            assetsController.seqMusic(),
          ),
          inputRow(
            "Calculator",
            assetsController.xCalcAlign(),
            assetsController.yCalcAlign(),
            assetsController.scaleCalc(),
            assetsController.alphaCalc(),
            assetsController.angleCalc(),
            assetsController.seqCalc(),
          ),
          inputRow(
            "Scanner",
            assetsController.xScannerAlign(),
            assetsController.yScannerAlign(),
            assetsController.scaleScanner(),
            assetsController.alphaScanner(),
            assetsController.angleScanner(),
            assetsController.seqScanner(),
          ),
          inputRow(
            "Clock",
            assetsController.xClockAlign(),
            assetsController.yClockAlign(),
            assetsController.scaleClock(),
            assetsController.alphaClock(),
            assetsController.angleClock(),
            assetsController.seqClock(),
          ),
          inputRow(
            "Recorder",
            assetsController.xRecorderAlign(),
            assetsController.yRecorderAlign(),
            assetsController.scaleRecorder(),
            assetsController.alphaRecorder(),
            assetsController.angleRecorder(),
            assetsController.seqRecorder(),
          ),
          inputRow(
            "Radio",
            assetsController.xRadioAlign(),
            assetsController.yRadioAlign(),
            assetsController.scaleRadio(),
            assetsController.alphaRadio(),
            assetsController.angleRadio(),
            assetsController.seqRadio(),
          ),
          inputRow(
            "Compass",
            assetsController.xCompassAlign(),
            assetsController.yCompassAlign(),
            assetsController.scaleCompass(),
            assetsController.alphaCompass(),
            assetsController.angleCompass(),
            assetsController.seqCompass(),
          ),
          inputRow(
            "File Manager",
            assetsController.xFileAlign(),
            assetsController.yFileAlign(),
            assetsController.scaleFile(),
            assetsController.alphaFile(),
            assetsController.angleFile(),
            assetsController.seqFile(),
          ),
          inputRow(
            "Gallery",
            assetsController.xGalleryAlign(),
            assetsController.yGalleryAlign(),
            assetsController.scaleGallery(),
            assetsController.alphaGallery(),
            assetsController.angleGallery(),
            assetsController.seqGallery(),
          ),
          inputRow(
            "Security",
            assetsController.xSecurityAlign(),
            assetsController.ySecurityAlign(),
            assetsController.scaleSecurity(),
            assetsController.alphaSecurity(),
            assetsController.angleSecurity(),
            assetsController.seqSecurity(),
          ),
        ],
      ),
      // Other Apps
      Column(
        children: [
          inputRow(
            "Facebook",
            assetsController.xFbAlign(),
            assetsController.yFbAlign(),
            assetsController.scaleFb(),
            assetsController.alphaFb(),
            assetsController.angleFb(),
            assetsController.seqFb(),
          ),
          inputRow(
            "Whatsapp",
            assetsController.xWpAlign(),
            assetsController.yWpAlign(),
            assetsController.scaleWp(),
            assetsController.alphaWp(),
            assetsController.angleWp(),
            assetsController.seqWp(),
          ),
          inputRow(
            "Twitter",
            assetsController.xTwtAlign(),
            assetsController.yTwtAlign(),
            assetsController.scaleTwt(),
            assetsController.alphaTwt(),
            assetsController.angleTwt(),
            assetsController.seqTwt(),
          ),
          inputRow(
            "Instagram",
            assetsController.xInstaAlign(),
            assetsController.yInstaAlign(),
            assetsController.scaleInsta(),
            assetsController.alphaInsta(),
            assetsController.angleInsta(),
            assetsController.seqInsta(),
          ),
          inputRow(
            "Telegram",
            assetsController.xTelegramAlign(),
            assetsController.yTelegramAlign(),
            assetsController.scaleTelegram(),
            assetsController.alphaTelegram(),
            assetsController.angleTelegram(),
            assetsController.seqTelegram(),
          ),
          inputRow(
            "Chrome",
            assetsController.xChromeAlign(),
            assetsController.yChromeAlign(),
            assetsController.scaleChrome(),
            assetsController.alphaChrome(),
            assetsController.angleChrome(),
            assetsController.seqChrome(),
          ),
          inputRow(
            "Dialer",
            assetsController.xDialerAlign(),
            assetsController.yDialerAlign(),
            assetsController.scaleDialer(),
            assetsController.alphaDialer(),
            assetsController.angleDialer(),
            assetsController.seqDialer(),
          ),
          inputRow(
            "Contact",
            assetsController.xContactAlign(),
            assetsController.yContactAlign(),
            assetsController.scaleContact(),
            assetsController.alphaContact(),
            assetsController.angleContact(),
            assetsController.seqContact(),
          ),
          
        ],
      ),
    ];

    return FluentApp(
      debugShowCheckedModeBanner: false,
      home: FluentTheme(
        data: ThemeData(
          navigationPaneTheme: const NavigationPaneThemeData(
              labelPadding: EdgeInsets.only(left: 10),
              iconPadding: EdgeInsets.only(left: 10)),
          brightness: darkMode ? Brightness.dark : Brightness.light,
          scaffoldBackgroundColor:
              darkMode ? const Color(0xFF201B2F) : const Color(0xFFF5F5F5),
          micaBackgroundColor:
              darkMode ? const Color(0xFF201B2F) : Colors.white,
          accentColor: magenta,
          inactiveColor: darkMode ? Colors.white : Colors.black,
          activeColor: const Color(0xffDD4C75),
          scrollbarTheme: const ScrollbarThemeData(
            thickness: 5,
            hoveringThickness: 10,
            scrollbarColor: Color.fromARGB(92, 221, 76, 117),
            scrollbarPressingColor: Color(0xffDD4C75),
            backgroundColor: Color(0xffDD4C75),
          ),
        ),
        child: NavigationView(
            pane: NavigationPane(
              /// The current selected index
              selected: index,
              footerItems: [
                PaneItem(
                  icon: IconButton(
                      icon: const Icon(FluentIcons.home),
                      onPressed: () async {
                        getTooltip('Theme has not saved', context);
                        // restart app
                        Get.back();
                      }),
                ),
                PaneItem(
                  icon: IconButton(
                      icon: const Icon(FluentIcons.save),
                      onPressed: () {
                        updateData();
                        SaveXml.saveXml(themeController.rootPath.string);
                        getTooltip('Saved successfully', context);
                      }),
                ),
                PaneItem(
                  icon: IconButton(
                      icon: const Icon(FluentIcons.code),
                      onPressed: () async {
                        updateData();
                        SaveXml.saveXml(themeController.rootPath.string);
                        getTooltip('Saved successfully', context);
                        launch(themeController.rootPath.string +
                            "\\lockscreen\\advance\\manifest.xml");
                      }),
                ),
                PaneItem(
                  icon: IconButton(
                      icon: const Icon(FluentIcons.folder),
                      onPressed: () async {
                        launch(themeController.rootPath.string +
                            "\\lockscreen\\advance");
                      }),
                ),
                PaneItem(
                  icon: IconButton(
                      icon: const Icon(FluentIcons.brush),
                      onPressed: () async {
                        launch(
                            themeController.rootPath.string + "\\icons\\res");
                      }),
                ),
                PaneItem(
                  icon: IconButton(
                      icon: const Icon(FluentIcons.machine_learning),
                      onPressed: () {
                        launch("E:\\Xiaomi Contract\\LOCKSCREEN");
                      }),
                ),
              ],
              items: [
                PaneItem(
                    icon: const Icon(FluentIcons.clock),
                    title: Text(
                      'TIME',
                      style: TextStyle(
                          color: darkMode ? Colors.white : Colors.black),
                    ),
                    mouseCursor: SystemMouseCursors.click),
                PaneItem(
                    icon: const Icon(FluentIcons.cloud_weather),
                    title: Text('OTHER',
                        style: TextStyle(
                            color: darkMode ? Colors.white : Colors.black)),
                    mouseCursor: SystemMouseCursors.click),
                PaneItem(
                    icon: const Icon(FluentIcons.music_note),
                    title: Text('MUSIC',
                        style: TextStyle(
                            color: darkMode ? Colors.white : Colors.black)),
                    mouseCursor: SystemMouseCursors.click),
                PaneItem(
                    icon: const Icon(FluentIcons.all_apps),
                    title: Text('SYSTEM',
                        style: TextStyle(
                            color: darkMode ? Colors.white : Colors.black)),
                    mouseCursor: SystemMouseCursors.click),
                PaneItem(
                    icon: const Icon(FluentIcons.app_icon_default),
                    title: Text('SOCIAL',
                        style: TextStyle(
                            color: darkMode ? Colors.white : Colors.black)),
                    mouseCursor: SystemMouseCursors.click),
              ],

              /// Called whenever the current index changes
              onChanged: (i) => setState(() => index = i),
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
                              themeController.name.string,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        ThemeMainStack(),
                      ],
                    ),
                    // textfield for offsets
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 20),
                      child: SingleChildScrollView(
                        child: SizedBox(
                          width: 550,
                          child: pages[index],
                        ),
                      ),
                    ),
                  ]),
            )),
      ),
    );
  }

  inputRow(header, xController, yController, sController, aController,
      rController, sqController) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 80,
                  child: TextBox(
                    controller: xController,
                    placeholder: 'x-axis',
                    keyboardType: TextInputType.number,
                    onChanged: (e) {
                      setState(() {
                        if (e.isEmpty) {
                          xController.text = 0.0.toString();
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: TextBox(
                    controller: yController,
                    placeholder: 'y-axis',
                    keyboardType: TextInputType.number,
                    onChanged: (e) {
                      setState(() {
                        if (e.isEmpty) {
                          yController.text = 0.0.toString();
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: TextBox(
                    controller: sController,
                    placeholder: 'scale',
                    keyboardType: TextInputType.number,
                    onChanged: (e) {
                      setState(() {
                        if (e.isEmpty) {
                          sController.text = 1.0.toString();
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: TextBox(
                    controller: aController,
                    placeholder: 'alpha',
                    keyboardType: TextInputType.number,
                    onChanged: (e) {
                      setState(() {
                        if (e.isEmpty) {
                          aController.text = 1.0.toString();
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: TextBox(
                    controller: rController,
                    placeholder: 'angle',
                    keyboardType: TextInputType.number,
                    onChanged: (e) {
                      setState(() {
                        if (e.isEmpty) {
                          rController.text = 0.0.toString();
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: TextBox(
                    controller: sqController,
                    placeholder: 'sequence',
                    keyboardType: TextInputType.number,
                    onChanged: (e) {
                      setState(() {
                        if (e.isEmpty) {
                          sqController.text = 1.0.toString();
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void reload() {
    setState(() {});
  }

  void updateData() {
    setState(() {
      //update data to fetched details
      fetchedDetails.addAll({
        "scale1": assetsController.scale1().text,
        "scale2": assetsController.scale2().text,
        "scale3": assetsController.scale3().text,
        "scaleDot": assetsController.scaleDot().text,
        "scaleAM": assetsController.scaleAM().text,
        "scaleWeek": assetsController.scaleWeek().text,
        "scaleDate": assetsController.scaleDate().text,
        "scaleMonth": assetsController.scaleMonth().text,
        "scaleTemp": assetsController.scaleTemp().text,
        "scaleWeatherIcon": assetsController.scaleWeatherIcon().text,
        "scaleBtr": assetsController.scaleBtr().text,
        "scaleBg": assetsController.scaleMusicBg().text,
        "scaleBtn": assetsController.scaleBtn().text,
        "scaleChrome": assetsController.scaleChrome().text,
        "scaleFb": assetsController.scaleFb().text,
        "scaleWp": assetsController.scaleWp().text,
        "scaleTwt": assetsController.scaleTwt().text,
        "scaleCam": assetsController.scaleCam().text,
        "scaleDialer": assetsController.scaleDialer().text,
        "scaleContact": assetsController.scaleContact().text,
        "scaleThemes": assetsController.scaleThemes().text,
        "scaleSettings": assetsController.scaleSettings().text,
        "scaleMusic": assetsController.scaleMusic().text,
        "scaleTelegram": assetsController.scaleTelegram().text,
        "scaleInsta": assetsController.scaleInsta().text,
        "analogScale": assetsController.analogScale().text,
        "scaleCalc": assetsController.scaleCalc().text,
        "scaleClock": assetsController.scaleClock().text,
        "scaleSecurity": assetsController.scaleSecurity().text,
        "scaleRadio": assetsController.scaleRadio().text,
        "scaleFile": assetsController.scaleFile().text,
        "scaleScanner": assetsController.scaleScanner().text,
        "scaleGallery": assetsController.scaleGallery().text,
        "scaleCompass": assetsController.scaleCompass().text,
        "scaleRecorder": assetsController.scaleRecorder().text,
        
        "x1Align": assetsController.x1Align().text,
        "y1Align": assetsController.y1Align().text,
        "x2Align": assetsController.x2Align().text,
        "y2Align": assetsController.y2Align().text,
        "x3Align": assetsController.x3Align().text,
        "y3Align": assetsController.y3Align().text,
        "xDotAlign": assetsController.xDotAlign().text,
        "yDotAlign": assetsController.yDotAlign().text,
        "xAMAlign": assetsController.xAMAlign().text,
        "yAMAlign": assetsController.yAMAlign().text,
        "xWeekAlign": assetsController.xWeekAlign().text,
        "yWeekAlign": assetsController.yWeekAlign().text,
        "xDateAlign": assetsController.xDateAlign().text,
        "yDateAlign": assetsController.yDateAlign().text,
        "xMonthAlign": assetsController.xMonthAlign().text,
        "yMonthAlign": assetsController.yMonthAlign().text,
        "xTempAlign": assetsController.xTempAlign().text,
        "yTempAlign": assetsController.yTempAlign().text,
        "xWeatherIconAlign": assetsController.xWeatherIconAlign().text,
        "yWeatherIconAlign": assetsController.yWeatherIconAlign().text,
        "xBtrAlign": assetsController.xBtrAlign().text,
        "yBtrAlign": assetsController.yBtrAlign().text,
        "xMusicBgAlign": assetsController.xMusicBgAlign().text,
        "yMusicBgAlign": assetsController.yMusicBgAlign().text,
        "xPrevBtnAlign": assetsController.xPrevBtnAlign().text,
        "yPrevBtnAlign": assetsController.yPrevBtnAlign().text,
        "xNextBtnAlign": assetsController.xNextBtnAlign().text,
        "yNextBtnAlign": assetsController.yNextBtnAlign().text,
        "xChromeAlign": assetsController.xChromeAlign().text,
        "yChromeAlign": assetsController.yChromeAlign().text,
        "xFbAlign": assetsController.xFbAlign().text,
        "yFbAlign": assetsController.yFbAlign().text,
        "xWpAlign": assetsController.xWpAlign().text,
        "yWpAlign": assetsController.yWpAlign().text,
        "xTwtAlign": assetsController.xTwtAlign().text,
        "yTwtAlign": assetsController.yTwtAlign().text,
        "xCamAlign": assetsController.xCamAlign().text,
        "yCamAlign": assetsController.yCamAlign().text,
        "xAnalogAlign": assetsController.xAnalogAlign().text,
        "yAnalogAlign": assetsController.yAnalogAlign().text,
        "xDialerAlign": assetsController.xDialerAlign().text,
        "yDialerAlign": assetsController.yDialerAlign().text,
        "xContactAlign": assetsController.xContactAlign().text,
        "yContactAlign": assetsController.yContactAlign().text,
        "xThemesAlign": assetsController.xThemesAlign().text,
        "yThemesAlign": assetsController.yThemesAlign().text,
        "xSettingsAlign": assetsController.xSettingsAlign().text,
        "ySettingsAlign": assetsController.ySettingsAlign().text,
        "xMusicAlign": assetsController.xMusicAlign().text,
        "yMusicAlign": assetsController.yMusicAlign().text,
        "xTelegramAlign": assetsController.xTelegramAlign().text,
        "yTelegramAlign": assetsController.yTelegramAlign().text,
        "xInstaAlign": assetsController.xInstaAlign().text,
        "yInstaAlign": assetsController.yInstaAlign().text,
        "xCalcAlign": assetsController.xCalcAlign().text,
        "yCalcAlign": assetsController.yCalcAlign().text,
        "xClockAlign": assetsController.xClockAlign().text,
        "yClockAlign": assetsController.yClockAlign().text,
        "xSecurityAlign": assetsController.xSecurityAlign().text,
        "ySecurityAlign": assetsController.ySecurityAlign().text,
        "xGalleryAlign": assetsController.xGalleryAlign().text,
        "yGalleryAlign": assetsController.yGalleryAlign().text,
        "xRadioAlign": assetsController.xRadioAlign().text,
        "yRadioAlign": assetsController.yRadioAlign().text,
        "xScannerAlign": assetsController.xScannerAlign().text,
        "yScannerAlign": assetsController.yScannerAlign().text,
        "xRecorderAlign": assetsController.xRecorderAlign().text,
        "yRecorderAlign": assetsController.yRecorderAlign().text,
        "xCompassAlign": assetsController.xCompassAlign().text,
        "yCompassAlign": assetsController.yCompassAlign().text,
        "xFileAlign": assetsController.xFileAlign().text,
        "yFileAlign": assetsController.yFileAlign().text,
        
        "angle1": assetsController.angle1().text,
        "angle2": assetsController.angle2().text,
        "angle3": assetsController.angle3().text,
        "angleDot": assetsController.angleDot().text,
        "angleAM": assetsController.angleAM().text,
        "angleWeek": assetsController.angleWeek().text,
        "angleDate": assetsController.angleDate().text,
        "angleMonth": assetsController.angleMonth().text,
        "angleTemp": assetsController.angleTemp().text,
        "angleWeatherIcon": assetsController.angleWeatherIcon().text,
        "angleBtr": assetsController.angleBtr().text,
        "angleMusicBg": assetsController.angleMusicBg().text,
        "anglePrevBtn": assetsController.anglePrevBtn().text,
        "angleNextBtn": assetsController.angleNextBtn().text,
        "angleChrome": assetsController.angleChrome().text,
        "angleFb": assetsController.angleFb().text,
        "angleWp": assetsController.angleWp().text,
        "angleTwt": assetsController.angleTwt().text,
        "angleCam": assetsController.angleCam().text,
        "angleAnalog": assetsController.angleAnalog().text,
        "angleDialer": assetsController.angleDialer().text,
        "angleContact": assetsController.angleContact().text,
        "angleThemes": assetsController.angleThemes().text,
        "angleSettings": assetsController.angleSettings().text,
        "angleMusic": assetsController.angleMusic().text,
        "angleTelegram": assetsController.angleTelegram().text,
        "angleInsta": assetsController.angleInsta().text,
        "angleCalc": assetsController.angleCalc().text,
        "angleClock": assetsController.angleClock().text,
        "angleSecurity": assetsController.angleSecurity().text,
        "angleGallery": assetsController.angleGallery().text,
        "angleRadio": assetsController.angleRadio().text,
        "angleScanner": assetsController.angleScanner().text,
        "angleRecorder": assetsController.angleRecorder().text,
        "angleCompass": assetsController.angleCompass().text,
        "angleFile": assetsController.angleFile().text,
        
        "alpha1": assetsController.alpha1().text,
        "alpha2": assetsController.alpha2().text,
        "alpha3": assetsController.alpha3().text,
        "alphaDot": assetsController.alphaDot().text,
        "alphaAM": assetsController.alphaAM().text,
        "alphaWeek": assetsController.alphaWeek().text,
        "alphaDate": assetsController.alphaDate().text,
        "alphaMonth": assetsController.alphaMonth().text,
        "alphaTemp": assetsController.alphaTemp().text,
        "alphaWeatherIcon": assetsController.alphaWeatherIcon().text,
        "alphaBtr": assetsController.alphaBtr().text,
        "alphaMusicBg": assetsController.alphaMusicBg().text,
        "alphaPrevBtn": assetsController.alphaPrevBtn().text,
        "alphaNextBtn": assetsController.alphaNextBtn().text,
        "alphaChrome": assetsController.alphaChrome().text,
        "alphaFb": assetsController.alphaFb().text,
        "alphaWp": assetsController.alphaWp().text,
        "alphaTwt": assetsController.alphaTwt().text,
        "alphaCam": assetsController.alphaCam().text,
        "alphaAnalog": assetsController.alphaAnalog().text,
        "alphaDialer": assetsController.alphaDialer().text,
        "alphaContact": assetsController.alphaContact().text,
        "alphaThemes": assetsController.alphaThemes().text,
        "alphaSettings": assetsController.alphaSettings().text,
        "alphaMusic": assetsController.alphaMusic().text,
        "alphaTelegram": assetsController.alphaTelegram().text,
        "alphaInsta": assetsController.alphaInsta().text,
        "alphaCalc": assetsController.alphaCalc().text,
        "alphaClock": assetsController.alphaClock().text,
        "alphaSecurity": assetsController.alphaSecurity().text,
        "alphaGallery": assetsController.alphaGallery().text,
        "alphaRadio": assetsController.alphaRadio().text,
        "alphaScanner": assetsController.alphaScanner().text,
        "alphaRecorder": assetsController.alphaRecorder().text,
        "alphaCompass": assetsController.alphaCompass().text,
        "alphaFile": assetsController.alphaFile().text,

        "seq1": assetsController.seq1().text,
        "seq2": assetsController.seq2().text,
        "seq3": assetsController.seq3().text,
        "seqDot": assetsController.seqDot().text,
        "seqAM": assetsController.seqAM().text,
        "seqWeek": assetsController.seqWeek().text,
        "seqDate": assetsController.seqDate().text,
        "seqMonth": assetsController.seqMonth().text,
        "seqTemp": assetsController.seqTemp().text,
        "seqWeatherIcon": assetsController.seqWeatherIcon().text,
        "seqBtr": assetsController.seqBtr().text,
        "seqMusicBg": assetsController.seqMusicBg().text,
        "seqPrevBtn": assetsController.seqPrevBtn().text,
        "seqNextBtn": assetsController.seqNextBtn().text,
        "seqChrome": assetsController.seqChrome().text,
        "seqFb": assetsController.seqFb().text,
        "seqWp": assetsController.seqWp().text,
        "seqTwt": assetsController.seqTwt().text,
        "seqCam": assetsController.seqCam().text,
        "seqAnalog": assetsController.seqAnalog().text,
        "seqDialer": assetsController.seqDialer().text,
        "seqContact": assetsController.seqContact().text,
        "seqThemes": assetsController.seqThemes().text,
        "seqSettings": assetsController.seqSettings().text,
        "seqMusic": assetsController.seqMusic().text,
        "seqTelegram": assetsController.seqTelegram().text,
        "seqInsta": assetsController.seqInsta().text,
        "seqCalc": assetsController.seqCalc().text,
        "seqClock": assetsController.seqClock().text,
        "seqSecurity": assetsController.seqSecurity().text,
        "seqGallery": assetsController.seqGallery().text,
        "seqRadio": assetsController.seqRadio().text,
        "seqScanner": assetsController.seqScanner().text,
        "seqRecorder": assetsController.seqRecorder().text,
        "seqCompass": assetsController.seqCompass().text,
        "seqFile": assetsController.seqFile().text,


      });
    });
  }
}
