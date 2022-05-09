// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_icon.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GalleryIconAdapter extends TypeAdapter<GalleryIcon> {
  @override
  final int typeId = 2;

  @override
  GalleryIcon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GalleryIcon(
      name: fields[0] as String,
      icon: fields[1] as IconData,
    );
  }

  @override
  void write(BinaryWriter writer, GalleryIcon obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.icon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GalleryIconAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
