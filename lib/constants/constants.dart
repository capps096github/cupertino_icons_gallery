import 'package:flutter/foundation.dart';

/// check if the current platform is Windows or Web
const bool isGalleryWeb = (kIsWeb);

/// check if the current platform is Windows
final bool isGalleryWindows = (defaultTargetPlatform == TargetPlatform.windows);
