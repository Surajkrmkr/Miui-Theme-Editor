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

  var xWeekAlign = TextEditingController(text: '0.0').obs;
  var yWeekAlign = TextEditingController(text: '0.0').obs;
  var scaleWeek = TextEditingController(text: '1.0').obs;
  var angleWeek = TextEditingController(text: '0.0').obs;
  var alphaWeek = TextEditingController(text: '1.0').obs;
  var seqWeek = TextEditingController(text: '0').obs;

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

  var xAnalogAlign = TextEditingController(text: '0.0').obs;
  var yAnalogAlign = TextEditingController(text: '0.0').obs;
  var analogScale = TextEditingController(text: '1.0').obs;
  var angleAnalog = TextEditingController(text: '0.0').obs;
  var alphaAnalog = TextEditingController(text: '1.0').obs;
  var seqAnalog = TextEditingController(text: '0').obs;

  var xChromeAlign = TextEditingController(text: '0.0').obs;
  var yChromeAlign = TextEditingController(text: '0.0').obs;
  var scaleChrome = TextEditingController(text: '1.0').obs;
  var angleChrome = TextEditingController(text: '0.0').obs;
  var alphaChrome = TextEditingController(text: '1.0').obs;
  var seqChrome = TextEditingController(text: '0').obs;

  var xFbAlign = TextEditingController(text: '0.0').obs;
  var yFbAlign = TextEditingController(text: '0.0').obs;
  var scaleFb = TextEditingController(text: '1.0').obs;
  var angleFb = TextEditingController(text: '0.0').obs;
  var alphaFb = TextEditingController(text: '1.0').obs;
  var seqFb = TextEditingController(text: '0').obs;

  var xWpAlign = TextEditingController(text: '0.0').obs;
  var yWpAlign = TextEditingController(text: '0.0').obs;
  var scaleWp = TextEditingController(text: '1.0').obs;
  var angleWp = TextEditingController(text: '0.0').obs;
  var alphaWp = TextEditingController(text: '1.0').obs;
  var seqWp = TextEditingController(text: '0').obs;

  var xTwtAlign = TextEditingController(text: '0.0').obs;
  var yTwtAlign = TextEditingController(text: '0.0').obs;
  var scaleTwt = TextEditingController(text: '1.0').obs;
  var angleTwt = TextEditingController(text: '0.0').obs;
  var alphaTwt = TextEditingController(text: '1.0').obs;
  var seqTwt = TextEditingController(text: '0').obs;

  var xCamAlign = TextEditingController(text: '0.0').obs;
  var yCamAlign = TextEditingController(text: '0.0').obs;
  var scaleCam = TextEditingController(text: '1.0').obs;
  var angleCam = TextEditingController(text: '0.0').obs;
  var alphaCam = TextEditingController(text: '1.0').obs;
  var seqCam = TextEditingController(text: '0').obs;

  var xDialerAlign = TextEditingController(text: '0.0').obs;
  var yDialerAlign = TextEditingController(text: '0.0').obs;
  var scaleDialer = TextEditingController(text: '1.0').obs;
  var angleDialer = TextEditingController(text: '0.0').obs;
  var alphaDialer = TextEditingController(text: '1.0').obs;
  var seqDialer = TextEditingController(text: '0').obs;

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

  var xContactAlign = TextEditingController(text: '0.0').obs;
  var yContactAlign = TextEditingController(text: '0.0').obs;
  var scaleContact = TextEditingController(text: '1.0').obs;
  var angleContact = TextEditingController(text: '0.0').obs;
  var alphaContact = TextEditingController(text: '1.0').obs;
  var seqContact = TextEditingController(text: '0').obs;

  var xTelegramAlign = TextEditingController(text: '0.0').obs;
  var yTelegramAlign = TextEditingController(text: '0.0').obs;
  var scaleTelegram = TextEditingController(text: '1.0').obs;
  var angleTelegram = TextEditingController(text: '0.0').obs;
  var alphaTelegram = TextEditingController(text: '1.0').obs;
  var seqTelegram = TextEditingController(text: '0').obs;

  var xThemesAlign = TextEditingController(text: '0.0').obs;
  var yThemesAlign = TextEditingController(text: '0.0').obs;
  var scaleThemes = TextEditingController(text: '1.0').obs;
  var angleThemes = TextEditingController(text: '0.0').obs;
  var alphaThemes = TextEditingController(text: '1.0').obs;
  var seqThemes = TextEditingController(text: '0').obs;

  var xInstaAlign = TextEditingController(text: '0.0').obs;
  var yInstaAlign = TextEditingController(text: '0.0').obs;
  var scaleInsta = TextEditingController(text: '1.0').obs;
  var angleInsta = TextEditingController(text: '0.0').obs;
  var alphaInsta = TextEditingController(text: '1.0').obs;
  var seqInsta = TextEditingController(text: '0').obs;

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
        case 'xChromeAlign':
          xChromeAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yChromeAlign':
          yChromeAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleChrome':
          scaleChrome().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleChrome':
          angleChrome().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaChrome':
          alphaChrome().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqChrome':
          seqChrome().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xFbAlign':
          xFbAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yFbAlign':
          yFbAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleFb':
          scaleFb().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleFb':
          angleFb().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaFb':
          alphaFb().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqFb':
          seqFb().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xWpAlign':
          xWpAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yWpAlign':
          yWpAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleWp':
          scaleWp().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleWp':
          angleWp().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaWp':
          alphaWp().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqWp':
          seqWp().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xTwtAlign':
          xTwtAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yTwtAlign':
          yTwtAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleTwt':
          scaleTwt().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleTwt':
          angleTwt().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaTwt':
          alphaTwt().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqTwt':
          seqTwt().text = p
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
        case 'xDialerAlign':
          xDialerAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yDialerAlign':
          yDialerAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleDialer':
          scaleDialer().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleDialer':
          angleDialer().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaDialer':
          alphaDialer().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqDialer':
          seqDialer().text = p
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
        case 'xContactAlign':
          xContactAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yContactAlign':
          yContactAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleContact':
          scaleContact().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleContact':
          angleContact().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaContact':
          alphaContact().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqContact':
          seqContact().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xTelegramAlign':
          xTelegramAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yTelegramAlign':
          yTelegramAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleTelegram':
          scaleTelegram().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleTelegram':
          angleTelegram().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaTelegram':
          alphaTelegram().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqTelegram':
          seqTelegram().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'xInstaAlign':
          xInstaAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'yInstaAlign':
          yInstaAlign().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'scaleInsta':
          scaleInsta().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'angleInsta':
          angleInsta().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'alphaInsta':
          alphaInsta().text = p
              .parse(value)
              .evaluate(EvaluationType.REAL, ContextModel())
              .toString();
          break;
        case 'seqInsta':
          seqInsta().text = p
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
        

      }
    });
  }
}
