// a class that we shall use to represent the cupertiono icon in this app

// Flutter imports:
import 'package:flutter/material.dart';

class GalleryIcon {
  // name of the icon
  final String name;

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
