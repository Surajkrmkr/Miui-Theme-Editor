import 'dart:convert';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xml/xml.dart';

import '../model/config.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  Config? config;
  String? wallPath;
  String? name;
  String? rootPath;
  Map? varDictFromManifest = {};

  ThemeBloc() : super(LoadingTheme()) {
    on<LoadConfigEvent>((event, emit) async {
      final String response = await rootBundle.loadString('assets/config.json');
      final data = await json.decode(response);
      final Config configData = Config.fromJson(data);
      config = configData;
      debugPrint(data.toString());

      emit(LoadedConfig());
    });
    on<SetThemePath>((event, emit) {
      rootPath = event.path;
      name = rootPath!.split('\\').last;
      wallPath = '$rootPath\\wallpaper\\default_lock_wallpaper.jpg';
      debugPrint("path set");
      emit(ThemePathSet());
    });

    on<LoadXml>((event, emit) {
      var file = File("$rootPath\\lockscreen\\advance\\manifest.xml");
      var xml = XmlDocument.parse(file.readAsStringSync());
      var details = xml.findAllElements('Var');
      // fetch expression attribute of all element
      for (var element in details) {
        varDictFromManifest![element.getAttribute('name')] =
            element.getAttribute('expression');
      }
      debugPrint("loadxml success");
      emit(LoadedXml());
    });

    on<LoadTheme>((event, emit) => {emit(LoadedTheme(data: varDictFromManifest))});
    on<ChangeField>((event, emit) {
      varDictFromManifest![event.key] = event.value;
    });
  }
}

class ChangedFieldCubit extends Cubit<Map<String, dynamic>> {
  ChangedFieldCubit() : super({});

  void changeField(String key, dynamic value) {
    state[key] = value;
    emit(state);
  }

  bool saveXml({String? path}) {
    var file = File("$path\\lockscreen\\advance\\manifest.xml");
    try {
      var xml = XmlDocument.parse(file.readAsStringSync());
      var details = xml.findAllElements('Var');
      // update expression attribute of all element
      for (var element in details) {
        if (state.containsKey(element.getAttribute('name'))) {
          element.setAttribute(
              'expression', state[element.getAttribute('name')]);
        }
      }
      file.writeAsStringSync(xml.toXmlString(pretty: true, indent: '\t'));
      return true;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
