import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_editor/constants/constants.dart';
import 'package:flutter_editor/controller/assets_state.dart';
import 'package:flutter_editor/controller/theme_state.dart';
import 'package:flutter_editor/pages/homepage.dart';
import 'package:flutter_editor/pages/theme_preview_stack.dart';
import 'package:flutter_editor/widgets/grid.dart';
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
  bool isRulerOpen = false;
  int unlockIndex = 0;
  final List<String> radioButtons = <String>[
    'Normal',
    'Slider',
    'Tap',
  ];
  @override
  void initState() {
    setState(() {
      fetchedDetails = SaveXml.load(themeController.rootPath.string);
      assetsController.refreshData();
      unlockIndex = assetsController.lockNormal.value
          ? 0
          : assetsController.lockSlide.value
              ? 1
              : 2;
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
              "Month Num",
              assetsController.xMonthNumAlign(),
              assetsController.yMonthNumAlign(),
              assetsController.scaleMonthNum(),
              assetsController.alphaMonthNum(),
              assetsController.angleMonthNum(),
              assetsController.seqMonthNum()),
          inputRow(
              "Year",
              assetsController.xYearAlign(),
              assetsController.yYearAlign(),
              assetsController.scaleYear(),
              assetsController.alphaYear(),
              assetsController.angleYear(),
              assetsController.seqYear()),
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
          lockRow(
            "Music Info",
            assetsController.xTextAlign(),
            assetsController.yTextAlign(),
            assetsController.scaleText(),
          ),
          musicRow(assetsController.colorText(), assetsController.songTitle(),
              assetsController.songArtist()),
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
      Column(
        children: [
          inputRow(
            "Calender",
            assetsController.xCalenderAlign(),
            assetsController.yCalenderAlign(),
            assetsController.scaleCalender(),
            assetsController.alphaCalender(),
            assetsController.diffCalender(),
            assetsController.diffCalender(),
          ),
          inputRow(
            "Notification",
            assetsController.xNotificationAlign(),
            assetsController.yNotificationAlign(),
            assetsController.scaleNotification(),
            assetsController.alphaNotification(),
            assetsController.countNotification(),
            assetsController.countNotification(),
          ),
          notifcationText(
            assetsController.colorNotification(),
          )
        ],
      ),
      Column(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Row(
              children: List.generate(radioButtons.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RadioButton(
                    checked: unlockIndex == index,
                    onChanged: (value) => setState(() {
                      unlockIndex = index;
                      if (index == 0) {
                        assetsController.lockNormal.value = true;
                        assetsController.lockSlide.value = false;
                        assetsController.lockPress.value = false;
                      } else if (index == 1) {
                        assetsController.lockNormal.value = false;
                        assetsController.lockSlide.value = true;
                        assetsController.lockPress.value = false;
                      } else {
                        assetsController.lockNormal.value = false;
                        assetsController.lockSlide.value = false;
                        assetsController.lockPress.value = true;
                      }
                    }),
                    content: Text(radioButtons[index]),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          lockRow(
            "Slider / Unlock Icon",
            assetsController.lockSlideDown(),
            assetsController.lockSideUnlLeft(),
            assetsController.lockSlideDown(),
          ),
          lockRow(
              "Press Icon",
              assetsController.xLockPressAlign(),
              assetsController.yLockPressAlign(),
              assetsController.scaleLockPress())
        ],
      )
    ];

    return FluentApp(
      debugShowCheckedModeBanner: false,
      home: FluentTheme(
        data: ThemeData(
          navigationPaneTheme: NavigationPaneThemeData(
              selectedIconColor: ButtonState.all(magenta),
              selectedTextStyle: ButtonState.all(const TextStyle(
                  color: Color(0xFFB26CD5), fontWeight: FontWeight.bold)),
              labelPadding: const EdgeInsets.only(left: 10),
              iconPadding: const EdgeInsets.only(left: 10)),
          brightness: darkMode ? Brightness.dark : Brightness.light,
          scaffoldBackgroundColor:
              darkMode ? const Color(0xFF282629) : const Color(0xFFF5F5F5),
          micaBackgroundColor:
              darkMode ? const Color(0xFF282629) : Colors.white,
          accentColor: magenta,
          inactiveColor: darkMode ? Colors.white : Colors.black,
          activeColor: const Color(0xFFB26CD5),
          scrollbarTheme: const ScrollbarThemeData(
            thickness: 5,
            hoveringThickness: 10,
            scrollbarColor: Color.fromARGB(92, 221, 76, 117),
            scrollbarPressingColor: Color(0xFFB26CD5),
            backgroundColor: Color(0xFFB26CD5),
          ),
        ),
        child: NavigationView(
            pane: NavigationPane(
              selected: index,
              footerItems: [
                PaneItemHeader(
                    header: ToggleSwitch(
                        content: const Text("Ruler"),
                        checked: isRulerOpen,
                        onChanged: (val) {
                          setState(() {
                            isRulerOpen = val;
                          });
                        })),
                PaneItemHeader(
                  header: Tooltip(
                    message: "Home",
                    child: IconButton(
                        icon: const Icon(FluentIcons.home),
                        onPressed: () async {
                          getTooltip('Theme has not saved', context);
                          // restart app
                          Get.back();
                        }),
                  ),
                ),
                PaneItemHeader(
                  header: Tooltip(
                    message: "Save",
                    child: IconButton(
                        icon: const Icon(FluentIcons.save),
                        onPressed: () {
                          SaveXml.updateData();
                          SaveXml.saveXml(themeController.rootPath.string);
                          getTooltip('Saved successfully', context);
                        }),
                  ),
                ),
                PaneItemHeader(
                  header: Tooltip(
                    message: "Manifest file",
                    child: IconButton(
                        icon: const Icon(FluentIcons.code),
                        onPressed: () async {
                          SaveXml.updateData();
                          SaveXml.saveXml(themeController.rootPath.string);
                          getTooltip('Saved successfully', context);
                          launchUrl(Uri.file(
                              "${themeController.rootPath.string}\\lockscreen\\advance\\manifest.xml"));
                        }),
                  ),
                ),
                PaneItemHeader(
                  header: Tooltip(
                    message: "Lockscreen folder",
                    child: IconButton(
                        icon: const Icon(FluentIcons.folder),
                        onPressed: () async {
                          launchUrl(Uri.file(
                              "${themeController.rootPath.string}\\lockscreen\\advance"));
                        }),
                  ),
                ),
                PaneItemHeader(
                  header: Tooltip(
                    message: "Icon folder",
                    child: IconButton(
                        icon: const Icon(FluentIcons.brush),
                        onPressed: () async {
                          launchUrl(Uri.file(
                              "${themeController.rootPath.string}\\icons\\res"));
                        }),
                  ),
                ),
              ],
              items: [
                PaneItem(
                    icon: const Icon(FluentIcons.skype_circle_clock),
                    title: Text(
                      'TIME',
                      style: TextStyle(
                          color: darkMode ? Colors.white : Colors.black),
                    ),
                    mouseCursor: SystemMouseCursors.click),
                PaneItem(
                    icon: const Icon(FluentIcons.p_o_i_solid),
                    title: Text('OTHER',
                        style: TextStyle(
                            color: darkMode ? Colors.white : Colors.black)),
                    mouseCursor: SystemMouseCursors.click),
                PaneItem(
                    icon: const Icon(FluentIcons.music_in_collection_fill),
                    title: Text('MUSIC',
                        style: TextStyle(
                            color: darkMode ? Colors.white : Colors.black)),
                    mouseCursor: SystemMouseCursors.click),
                PaneItem(
                    icon: const Icon(FluentIcons.shape_solid),
                    title: Text('APPS',
                        style: TextStyle(
                            color: darkMode ? Colors.white : Colors.black)),
                    mouseCursor: SystemMouseCursors.click),
                PaneItem(
                    icon: const Icon(FluentIcons.a_t_p_logo),
                    title: Text('WIDGET',
                        style: TextStyle(
                            color: darkMode ? Colors.white : Colors.black)),
                    mouseCursor: SystemMouseCursors.click),
                PaneItem(
                    icon: const Icon(FluentIcons.flame_solid),
                    title: Text('LOCK',
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
                        isRulerOpen ? const GridLines() : Container(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                header,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Slider(
                  value: double.parse(xController.text),
                  min: -(Constants.sw / 2),
                  max: Constants.sw / 2,
                  divisions: Constants.sw ~/ 5,
                  onChanged: (e) {
                    setState(() {
                      xController.text = e.toString();
                    });
                  },
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Slider(
                  value: double.parse(yController.text),
                  min: -(Constants.sh / 2),
                  max: Constants.sh / 2,
                  divisions: Constants.sh ~/ 5,
                  onChanged: (e) {
                    setState(() {
                      yController.text = e.toString();
                    });
                  },
                ),
              ),
            ],
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
                          if (!e.isNum) {
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
                          if (!e.isNum) {
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
                          if (!e.isNum) {
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
                        double val = double.parse(e);
                        setState(() {
                          if (!e.isNum || val < 0 || val > 1) {
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
                          if (!e.isNum) {
                            rController.text = 0.0.toString();
                          }
                        });
                      },
                    ),
                  ),
                  ToggleSwitch(
                      checked: double.parse(sqController.text) == 1,
                      onChanged: (val) {
                        setState(() {
                          sqController.text = val ? '1.0' : '0.0';
                        });
                      })
                ]),
          ),
        ],
      ),
    );
  }

  lockRow(header, xController, yController, sController) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: SizedBox(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: SizedBox(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  musicRow(colorText, title, artist) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              child: TextBox(
                controller: colorText,
                placeholder: 'Color',
                keyboardType: TextInputType.text,
                onChanged: (e) {
                  setState(() {
                    if (e.isEmpty) {
                      colorText.text = 'FFFFFFFF';
                    }
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: SizedBox(
                width: 120,
                child: TextBox(
                  controller: title,
                  placeholder: 'Title',
                  keyboardType: TextInputType.text,
                  onChanged: (e) {
                    setState(() {
                      if (e.isEmpty) {
                        title.text = 'Song Name';
                      }
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: SizedBox(
                width: 120,
                child: TextBox(
                  controller: artist,
                  placeholder: 'Artist',
                  keyboardType: TextInputType.text,
                  onChanged: (e) {
                    setState(() {
                      if (e.isEmpty) {
                        artist.text = 'Artist';
                      }
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  notifcationText(colorText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: SizedBox(
          width: 100,
          child: TextBox(
            controller: colorText,
            placeholder: 'Color',
            keyboardType: TextInputType.text,
            onChanged: (e) {
              setState(() {
                if (e.isEmpty) {
                  colorText.text = 'FFFFFFFF';
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
