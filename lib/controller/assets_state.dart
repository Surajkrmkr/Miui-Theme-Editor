import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_editor/widgets/save.dart';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class AssetsController extends GetxController {
  var x1Align = TextEditingController(text: '0.0').obs;
  var y1Align = TextEditingController(text: '0.0').obs;
  var scale1 = TextEditingController(text: '1.0').obs;
  var angle1 = TextEditingController(text: '0.0').obs;
  var alpha1 = TextEditingController(text: '1.0').obs;
  var seq1 = TextEditingController(text: '0').obs;

  var x2Align = TextEditingController(text: '0.0').obs;
  var y2Align = TextEditingController(text: '200.0').obs;
  var scale2 = TextEditingController(text: '1.0').obs;
  var angle2 = TextEditingController(text: '0.0').obs;
  var alpha2 = TextEditingController(text: '1.0').obs;
  var seq2 = TextEditingController(text: '0').obs;

  var x3Align = TextEditingController(text: '0.0').obs;
  var y3Align = TextEditingController(text: '200.0').obs;
  var scale3 = TextEditingController(text: '1.0').obs;
  var angle3 = TextEditingController(text: '0.0').obs;
  var alpha3 = TextEditingController(text: '1.0').obs;
  var seq3 = TextEditingController(text: '0').obs;

  var xDotAlign = TextEditingController(text: '0.0').obs;
  var yDotAlign = TextEditingController(text: '0.0').obs;
  var scaleDot = TextEditingController(text: '1.0').obs;
  var angleDot = TextEditingController(text: '0.0').obs;
  var alphaDot = TextEditingController(text: '1.0').obs;
  var seqDot = TextEditingController(text: '0').obs;

  var xAMAlign = TextEditingController(text: '0.0').obs;
  var yAMAlign = TextEditingController(text: '0.0').obs;
  var scaleAM = TextEditingController(text: '1.0').obs;
  var angleAM = TextEditingController(text: '0.0').obs;
  var alphaAM = TextEditingController(text: '1.0').obs;
  var seqAM = TextEditingController(text: '0').obs;

  var xDateAlign = TextEditingController(text: '0.0').obs;
  var yDateAlign = TextEditingController(text: '0.0').obs;
  var scaleDate = TextEditingController(text: '1.0').obs;
  var angleDate = TextEditingController(text: '0.0').obs;
  var alphaDate = TextEditingController(text: '1.0').obs;
  var seqDate = TextEditingController(text: '0').obs;

  var xMonthAlign = TextEditingController(text: '0.0').obs;
  var yMonthAlign = TextEditingController(text: '0.0').obs;
  var scaleMonth = TextEditingController(text: '1.0').obs;
  var angleMonth = TextEditingController(text: '0.0').obs;
  var alphaMonth = TextEditingController(text: '1.0').obs;
  var seqMonth = TextEditingController(text: '0').obs;

  var xMonthNumAlign = TextEditingController(text: '0.0').obs;
  var yMonthNumAlign = TextEditingController(text: '0.0').obs;
  var scaleMonthNum = TextEditingController(text: '1.0').obs;
  var angleMonthNum = TextEditingController(text: '0.0').obs;
  var alphaMonthNum = TextEditingController(text: '1.0').obs;
  var seqMonthNum = TextEditingController(text: '0').obs;

  var xWeekAlign = TextEditingController(text: '0.0').obs;
  var yWeekAlign = TextEditingController(text: '0.0').obs;
  var scaleWeek = TextEditingController(text: '1.0').obs;
  var angleWeek = TextEditingController(text: '0.0').obs;
  var alphaWeek = TextEditingController(text: '1.0').obs;
  var seqWeek = TextEditingController(text: '0').obs;

  var xYearAlign = TextEditingController(text: '0.0').obs;
  var yYearAlign = TextEditingController(text: '0.0').obs;
  var scaleYear = TextEditingController(text: '1.0').obs;
  var angleYear = TextEditingController(text: '0.0').obs;
  var alphaYear = TextEditingController(text: '1.0').obs;
  var seqYear = TextEditingController(text: '0').obs;

  var xCalenderAlign = TextEditingController(text: '0.0').obs;
  var yCalenderAlign = TextEditingController(text: '0.0').obs;
  var scaleCalender = TextEditingController(text: '1.0').obs;
  var angleCalender = TextEditingController(text: '0.0').obs;
  var alphaCalender = TextEditingController(text: '1.0').obs;
  var diffCalender = TextEditingController(text: '50').obs;
  var scaleCalWeek = TextEditingController(text: '1.0').obs;
  var scaleCalDate = TextEditingController(text: '1.0').obs;

  var xTempAlign = TextEditingController(text: '0.0').obs;
  var yTempAlign = TextEditingController(text: '0.0').obs;
  var scaleTemp = TextEditingController(text: '1.0').obs;
  var angleTemp = TextEditingController(text: '0.0').obs;
  var alphaTemp = TextEditingController(text: '1.0').obs;
  var seqTemp = TextEditingController(text: '0').obs;

  var xWeatherIconAlign = TextEditingController(text: '0.0').obs;
  var yWeatherIconAlign = TextEditingController(text: '0.0').obs;
  var scaleWeatherIcon = TextEditingController(text: '1.0').obs;
  var angleWeatherIcon = TextEditingController(text: '0.0').obs;
  var alphaWeatherIcon = TextEditingController(text: '1.0').obs;
  var seqWeatherIcon = TextEditingController(text: '0').obs;

  var xBtrAlign = TextEditingController(text: '0.0').obs;
  var yBtrAlign = TextEditingController(text: '0.0').obs;
  var scaleBtr = TextEditingController(text: '1.0').obs;
  var angleBtr = TextEditingController(text: '0.0').obs;
  var alphaBtr = TextEditingController(text: '1.0').obs;
  var seqBtr = TextEditingController(text: '0').obs;

  var xMusicBgAlign = TextEditingController(text: '0.0').obs;
  var yMusicBgAlign = TextEditingController(text: '0.0').obs;
  var scaleMusicBg = TextEditingController(text: '1.0').obs;
  var angleMusicBg = TextEditingController(text: '0.0').obs;
  var alphaMusicBg = TextEditingController(text: '1.0').obs;
  var seqMusicBg = TextEditingController(text: '0').obs;
  var scaleBtn = TextEditingController(text: '1.0').obs;

  var xNextBtnAlign = TextEditingController(text: '0.0').obs;
  var yNextBtnAlign = TextEditingController(text: '0.0').obs;
  var angleNextBtn = TextEditingController(text: '0.0').obs;
  var alphaNextBtn = TextEditingController(text: '1.0').obs;
  var seqNextBtn = TextEditingController(text: '0').obs;

  var xPrevBtnAlign = TextEditingController(text: '0.0').obs;
  var yPrevBtnAlign = TextEditingController(text: '0.0').obs;
  var anglePrevBtn = TextEditingController(text: '0.0').obs;
  var alphaPrevBtn = TextEditingController(text: '1.0').obs;
  var seqPrevBtn = TextEditingController(text: '0').obs;

  var scaleText = TextEditingController(text: '1.0').obs;
  var songTitle = TextEditingController(text: 'Song name').obs;
  var songArtist = TextEditingController(text: 'Artist').obs;
  var colorText = TextEditingController(text: '#FF000000').obs;
  var xTextAlign = TextEditingController(text: '0.0').obs;
  var yTextAlign = TextEditingController(text: '0.0').obs;

  var scaleCity = TextEditingController(text: '1.0').obs;
  var alphaCity = TextEditingController(text: '1.0').obs;
  var angleCity = TextEditingController(text: '0.0').obs;
  var xCityAlign = TextEditingController(text: '0.0').obs;
  var yCityAlign = TextEditingController(text: '0').obs;
  var cityAlignment = TextEditingController(text: 'center').obs;
  var cityColor = TextEditingController(text: '#FFFFFFFF').obs;
  var nameCity = TextEditingController(text: 'Cuttack').obs;

  var xAnalogAlign = TextEditingController(text: '0.0').obs;
  var yAnalogAlign = TextEditingController(text: '0.0').obs;
  var analogScale = TextEditingController(text: '1.0').obs;
  var angleAnalog = TextEditingController(text: '0.0').obs;
  var alphaAnalog = TextEditingController(text: '1.0').obs;
  var seqAnalog = TextEditingController(text: '0').obs;

  var lockNormal = true.obs;
  var lockPress = false.obs;
  var lockSlide = false.obs;
  var lockSlideDown = TextEditingController(text: '0').obs;
  var lockSideUnlLeft = TextEditingController(text: '0').obs;
  var scaleLockPress = TextEditingController(text: '1.0').obs;
  var xLockPressAlign = TextEditingController(text: '0.0').obs;
  var yLockPressAlign = TextEditingController(text: '0.0').obs;

  var xCamAlign = TextEditingController(text: '0.0').obs;
  var yCamAlign = TextEditingController(text: '0.0').obs;
  var scaleCam = TextEditingController(text: '1.0').obs;
  var angleCam = TextEditingController(text: '0.0').obs;
  var alphaCam = TextEditingController(text: '1.0').obs;
  var seqCam = TextEditingController(text: '0').obs;

  var xSettingsAlign = TextEditingController(text: '0.0').obs;
  var ySettingsAlign = TextEditingController(text: '0.0').obs;
  var scaleSettings = TextEditingController(text: '1.0').obs;
  var angleSettings = TextEditingController(text: '0.0').obs;
  var alphaSettings = TextEditingController(text: '1.0').obs;
  var seqSettings = TextEditingController(text: '0').obs;

  var xMusicAlign = TextEditingController(text: '0.0').obs;
  var yMusicAlign = TextEditingController(text: '0.0').obs;
  var scaleMusic = TextEditingController(text: '1.0').obs;
  var angleMusic = TextEditingController(text: '0.0').obs;
  var alphaMusic = TextEditingController(text: '1.0').obs;
  var seqMusic = TextEditingController(text: '0').obs;

  var xThemesAlign = TextEditingController(text: '0.0').obs;
  var yThemesAlign = TextEditingController(text: '0.0').obs;
  var scaleThemes = TextEditingController(text: '1.0').obs;
  var angleThemes = TextEditingController(text: '0.0').obs;
  var alphaThemes = TextEditingController(text: '1.0').obs;
  var seqThemes = TextEditingController(text: '0').obs;

  var xCalcAlign = TextEditingController(text: '0.0').obs;
  var yCalcAlign = TextEditingController(text: '0.0').obs;
  var scaleCalc = TextEditingController(text: '1.0').obs;
  var angleCalc = TextEditingController(text: '0.0').obs;
  var alphaCalc = TextEditingController(text: '1.0').obs;
  var seqCalc = TextEditingController(text: '0').obs;

  var xClockAlign = TextEditingController(text: '0.0').obs;
  var yClockAlign = TextEditingController(text: '0.0').obs;
  var scaleClock = TextEditingController(text: '1.0').obs;
  var angleClock = TextEditingController(text: '0.0').obs;
  var alphaClock = TextEditingController(text: '1.0').obs;
  var seqClock = TextEditingController(text: '0').obs;

  var xRecorderAlign = TextEditingController(text: '0.0').obs;
  var yRecorderAlign = TextEditingController(text: '0.0').obs;
  var scaleRecorder = TextEditingController(text: '1.0').obs;
  var angleRecorder = TextEditingController(text: '0.0').obs;
  var alphaRecorder = TextEditingController(text: '1.0').obs;
  var seqRecorder = TextEditingController(text: '0').obs;

  var xCompassAlign = TextEditingController(text: '0.0').obs;
  var yCompassAlign = TextEditingController(text: '0.0').obs;
  var scaleCompass = TextEditingController(text: '1.0').obs;
  var angleCompass = TextEditingController(text: '0.0').obs;
  var alphaCompass = TextEditingController(text: '1.0').obs;
  var seqCompass = TextEditingController(text: '0').obs;

  var xFileAlign = TextEditingController(text: '0.0').obs;
  var yFileAlign = TextEditingController(text: '0.0').obs;
  var scaleFile = TextEditingController(text: '1.0').obs;
  var angleFile = TextEditingController(text: '0.0').obs;
  var alphaFile = TextEditingController(text: '1.0').obs;
  var seqFile = TextEditingController(text: '0').obs;

  var xRadioAlign = TextEditingController(text: '0.0').obs;
  var yRadioAlign = TextEditingController(text: '0.0').obs;
  var scaleRadio = TextEditingController(text: '1.0').obs;
  var angleRadio = TextEditingController(text: '0.0').obs;
  var alphaRadio = TextEditingController(text: '1.0').obs;
  var seqRadio = TextEditingController(text: '0').obs;

  var xScannerAlign = TextEditingController(text: '0.0').obs;
  var yScannerAlign = TextEditingController(text: '0.0').obs;
  var scaleScanner = TextEditingController(text: '1.0').obs;
  var angleScanner = TextEditingController(text: '0.0').obs;
  var alphaScanner = TextEditingController(text: '1.0').obs;
  var seqScanner = TextEditingController(text: '0').obs;

  var xGalleryAlign = TextEditingController(text: '0.0').obs;
  var yGalleryAlign = TextEditingController(text: '0.0').obs;
  var scaleGallery = TextEditingController(text: '1.0').obs;
  var angleGallery = TextEditingController(text: '0.0').obs;
  var alphaGallery = TextEditingController(text: '1.0').obs;
  var seqGallery = TextEditingController(text: '0').obs;

  var xSecurityAlign = TextEditingController(text: '0.0').obs;
  var ySecurityAlign = TextEditingController(text: '0.0').obs;
  var scaleSecurity = TextEditingController(text: '1.0').obs;
  var angleSecurity = TextEditingController(text: '0.0').obs;
  var alphaSecurity = TextEditingController(text: '1.0').obs;
  var seqSecurity = TextEditingController(text: '0').obs;

  void refreshData() {
    Parser p = Parser();
    fetchedDetails.forEach((key, value) {
      switch (key) {
        case 'x1Align':
          x1Align().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'y1Align':
          y1Align().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scale1':
          scale1().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angle1':
          angle1().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alpha1':
          alpha1().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seq1':
          seq1().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'x2Align':
          x2Align().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'y2Align':
          y2Align().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scale2':
          scale2().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angle2':
          angle2().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alpha2':
          alpha2().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seq2':
          seq2().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'x3Align':
          x3Align().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'y3Align':
          y3Align().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scale3':
          scale3().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angle3':
          angle3().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alpha3':
          alpha3().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seq3':
          seq3().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xDotAlign':
          xDotAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yDotAlign':
          yDotAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleDot':
          scaleDot().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleDot':
          angleDot().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaDot':
          alphaDot().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqDot':
          seqDot().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xAMAlign':
          xAMAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yAMAlign':
          yAMAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleAM':
          scaleAM().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleAM':
          angleAM().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaAM':
          alphaAM().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqAM':
          seqAM().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xDateAlign':
          xDateAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yDateAlign':
          yDateAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleDate':
          scaleDate().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleDate':
          angleDate().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaDate':
          alphaDate().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqDate':
          seqDate().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xMonthAlign':
          xMonthAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yMonthAlign':
          yMonthAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleMonth':
          scaleMonth().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleMonth':
          angleMonth().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaMonth':
          alphaMonth().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqMonth':
          seqMonth().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xMonthNumAlign':
          xMonthNumAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yMonthNumAlign':
          yMonthNumAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleMonthNum':
          scaleMonthNum().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleMonthNum':
          angleMonthNum().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaMonthNum':
          alphaMonthNum().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqMonthNum':
          seqMonthNum().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xWeekAlign':
          xWeekAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yWeekAlign':
          yWeekAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleWeek':
          scaleWeek().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleWeek':
          angleWeek().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaWeek':
          alphaWeek().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqWeek':
          seqWeek().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xYearAlign':
          xYearAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yYearAlign':
          yYearAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleYear':
          scaleYear().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleYear':
          angleYear().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaYear':
          alphaYear().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqYear':
          seqYear().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xCalenderAlign':
          xCalenderAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yCalenderAlign':
          yCalenderAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleCalender':
          scaleCalender().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleCalender':
          angleCalender().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaCalender':
          alphaCalender().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'diffCalender':
          diffCalender().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleCalWeek':
          scaleCalWeek().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleCalDate':
          scaleCalDate().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xTempAlign':
          xTempAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yTempAlign':
          yTempAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleTemp':
          scaleTemp().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleTemp':
          angleTemp().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaTemp':
          alphaTemp().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqTemp':
          seqTemp().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xWeatherIconAlign':
          xWeatherIconAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yWeatherIconAlign':
          yWeatherIconAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleWeatherIcon':
          scaleWeatherIcon().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleWeatherIcon':
          angleWeatherIcon().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaWeatherIcon':
          alphaWeatherIcon().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqWeatherIcon':
          seqWeatherIcon().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xBtrAlign':
          xBtrAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yBtrAlign':
          yBtrAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleBtr':
          scaleBtr().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleBtr':
          angleBtr().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaBtr':
          alphaBtr().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqBtr':
          seqBtr().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xMusicBgAlign':
          xMusicBgAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yMusicBgAlign':
          yMusicBgAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleBg':
          scaleMusicBg().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleMusicBg':
          angleMusicBg().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaMusicBg':
          alphaMusicBg().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqMusicBg':
          seqMusicBg().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xPrevBtnAlign':
          xPrevBtnAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yPrevBtnAlign':
          yPrevBtnAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleBtn':
          scaleBtn().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'anglePrevBtn':
          anglePrevBtn().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaPrevBtn':
          alphaPrevBtn().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqPrevBtn':
          seqPrevBtn().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xNextBtnAlign':
          xNextBtnAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yNextBtnAlign':
          yNextBtnAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleNextBtn':
          angleNextBtn().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaNextBtn':
          alphaNextBtn().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqNextBtn':
          seqNextBtn().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xCamAlign':
          xCamAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yCamAlign':
          yCamAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleCam':
          scaleCam().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleCam':
          angleCam().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaCam':
          alphaCam().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqCam':
          seqCam().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xAnalogAlign':
          xAnalogAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yAnalogAlign':
          yAnalogAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'analogScale':
          analogScale().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleAnalog':
          angleAnalog().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaAnalog':
          alphaAnalog().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqAnalog':
          seqAnalog().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'lockNormal':
          lockNormal.value = (value == '1') ? true : false;
          break;
        case 'lockPress':
          lockPress.value = (value == '1') ? true : false;
          break;
        case 'lockSlide':
          lockSlide.value = (value == '1') ? true : false;
          break;
        case 'lockSlideDown':
          lockSlideDown().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'lockSideUnlLeft':
          lockSideUnlLeft().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleLockPress':
          scaleLockPress().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xLockPressAlign':
          xLockPressAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yLockPressAlign':
          yLockPressAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xSettingsAlign':
          xSettingsAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'ySettingsAlign':
          ySettingsAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleSettings':
          scaleSettings().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleSettings':
          angleSettings().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaSettings':
          alphaSettings().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqSettings':
          seqSettings().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xMusicAlign':
          xMusicAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yMusicAlign':
          yMusicAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleMusic':
          scaleMusic().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleMusic':
          angleMusic().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaMusic':
          alphaMusic().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqMusic':
          seqMusic().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xThemesAlign':
          xThemesAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yThemesAlign':
          yThemesAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleThemes':
          scaleThemes().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleThemes':
          angleThemes().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaThemes':
          alphaThemes().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqThemes':
          seqThemes().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xCalcAlign':
          xCalcAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yCalcAlign':
          yCalcAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleCalc':
          scaleCalc().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleCalc':
          angleCalc().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaCalc':
          alphaCalc().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqCalc':
          seqCalc().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xScannerAlign':
          xScannerAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yScannerAlign':
          yScannerAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleScanner':
          scaleScanner().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleScanner':
          angleScanner().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaScanner':
          alphaScanner().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqScanner':
          seqScanner().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xClockAlign':
          xClockAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yClockAlign':
          yClockAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleClock':
          scaleClock().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleClock':
          angleClock().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaClock':
          alphaClock().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqClock':
          seqClock().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xRecorderAlign':
          xRecorderAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yRecorderAlign':
          yRecorderAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleRecorder':
          scaleRecorder().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleRecorder':
          angleRecorder().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaRecorder':
          alphaRecorder().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqRecorder':
          seqRecorder().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xRadioAlign':
          xRadioAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yRadioAlign':
          yRadioAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleRadio':
          scaleRadio().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleRadio':
          angleRadio().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaRadio':
          alphaRadio().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqRadio':
          seqRadio().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xCompassAlign':
          xCompassAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yCompassAlign':
          yCompassAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleCompass':
          scaleCompass().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleCompass':
          angleCompass().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaCompass':
          alphaCompass().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqCompass':
          seqCompass().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xFileAlign':
          xFileAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yFileAlign':
          yFileAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleFile':
          scaleFile().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleFile':
          angleFile().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaFile':
          alphaFile().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqFile':
          seqFile().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xGalleryAlign':
          xGalleryAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yGalleryAlign':
          yGalleryAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleGallery':
          scaleGallery().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleGallery':
          angleGallery().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaGallery':
          alphaGallery().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqGallery':
          seqGallery().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xSecurityAlign':
          xSecurityAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'ySecurityAlign':
          ySecurityAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleSecurity':
          scaleSecurity().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleSecurity':
          angleSecurity().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaSecurity':
          alphaSecurity().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqSecurity':
          seqSecurity().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleText':
          scaleText().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xTextAlign':
          xTextAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yTextAlign':
          yTextAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'songTitle':
          songTitle().text = value.toString().replaceAll("'", "");
          break;
        case 'songArtist':
          songArtist().text = value.toString().replaceAll("'", "");
          break;
        case 'colorText':
          colorText().text = value.toString().replaceAll("'", "").replaceAll("#", "");
          break;
        case 'alphaCity':
          alphaCity().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleCity':
          angleCity().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xCityAlign':
          xCityAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yCityAlign':
          yCityAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleCity':
          scaleCity().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'cityColor':
          cityColor().text = value.toString().replaceAll("'", "").replaceAll("#", "");
          break;
        case 'cityAlignment':
          cityAlignment().text = value.toString().replaceAll("'", "");
          break;
        case 'nameCity':
          nameCity().text = value.toString().replaceAll("'", "");
          break;
      }
    });
  }
}
