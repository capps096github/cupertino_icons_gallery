// a class that we shall use to represent the cupertiono icon in this app
import 'package:flutter/material.dart';

class GalleryIcon {
  // name of the icon
  final String name;

  // the icon itself
  final IconData icon;

  // aliases
  final List<String> aliases;

   GalleryIcon({
    required this.name,
    required this.icon,
    this.aliases = const [],
  });
}
