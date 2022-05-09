// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_search_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecentSearchItemAdapter extends TypeAdapter<RecentSearchItem> {
  @override
  final int typeId = 1;

  @override
  RecentSearchItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecentSearchItem(
      searchQuery: fields[0] as String,
      selectedIcon: fields[1] as GalleryIcon,
    );
  }

  @override
  void write(BinaryWriter writer, RecentSearchItem obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.searchQuery)
      ..writeByte(1)
      ..write(obj.selectedIcon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecentSearchItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
