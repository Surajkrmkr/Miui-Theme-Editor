// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_theme.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecentThemeAdapter extends TypeAdapter<RecentTheme> {
  @override
  final int typeId = 0;

  @override
  RecentTheme read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecentTheme()
      ..name = fields[0] as String?
      ..imagePath = fields[1] as String?
      ..themePath = fields[2] as String?;
  }

  @override
  void write(BinaryWriter writer, RecentTheme obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.imagePath)
      ..writeByte(2)
      ..write(obj.themePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecentThemeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
