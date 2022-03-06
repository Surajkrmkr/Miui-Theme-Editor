import 'dart:io';
import 'package:xml/xml.dart';

var fetchedDetails = {};

class SaveXml {
  static load(path) {
    var detailsDict = {};
    var file = File(path + "\\lockscreen\\advance\\manifest.xml");
    var xml = XmlDocument.parse(file.readAsStringSync());
    var details = xml.findAllElements('Var');
    // fetch expression attribute of all element
    for (var element in details) {
      detailsDict[element.getAttribute('name')] =
          element.getAttribute('expression');
    }
    return (detailsDict);
  }

  static void saveXml(path) {
    var file = File(path + "\\lockscreen\\advance\\manifest.xml");
    var xml = XmlDocument.parse(file.readAsStringSync());
    var details = xml.findAllElements('Var');
    // update expression attribute of all element
    for (var element in details) {
      element.setAttribute(
          'expression', fetchedDetails[element.getAttribute('name')]);
    }
    file.writeAsStringSync(xml.toXmlString(pretty: true, indent: '\t'));
  }
}
