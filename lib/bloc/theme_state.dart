part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingTheme extends ThemeState {}

class LoadedConfig extends ThemeState {}

class ThemePathSet extends ThemeState {}

class LoadedXml extends ThemeState {}

class LoadedTheme extends ThemeState {
  final Map? data;
  LoadedTheme({required this.data});
  @override
  List<Object?> get props => [data];
}
