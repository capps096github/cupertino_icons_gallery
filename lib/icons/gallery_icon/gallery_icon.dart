// a class that we shall use to represent the cupertiono icon in this app

// Flutter imports:
import 'package:flutter/material.dart';

import 'package:hive/hive.dart';

part 'gallery_icon.g.dart';

@HiveType(typeId: 2)
class GalleryIcon extends HiveObject {
  @HiveField(0)
  // name of the icon
  final String name;

  @HiveField(1)
  // icon
  final IconData icon;

  // aliases
  final List<String> aliases;

  GalleryIcon({
    required this.name,
    required this.icon,
    this.aliases = const [],
  });
}
