part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class LoadConfigEvent extends ThemeEvent {}

class SetThemePath extends ThemeEvent {
  final String? path;
  SetThemePath({required this.path});
}

class LoadXml extends ThemeEvent {}

class ChangeField extends ThemeEvent {
  final String? key;
  final dynamic value;
  ChangeField({required this.key, required this.value});
}

class LoadTheme extends ThemeEvent {}
