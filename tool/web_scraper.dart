import 'dart:io';
import 'package:path/path.dart' as p;

import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

//Target URL(official flutter cupertino documentation website)
const sourceUrl =
    'https://api.flutter.dev/flutter/cupertino/CupertinoIcons-class.html#constants';

//GET request
Future<String> fetchPage() async {
  final response = await http.get(Uri.parse(sourceUrl));

  if (response.statusCode != 200) {
    throw Exception('Error, Status Code: ${response.statusCode}');
  }

  return response.body;
}

Document parseHtml(String htmlContent) {
  return parser.parse(htmlContent);
}

List<Element> getConstants(Document doc) {
  return doc.querySelectorAll('dl dt.constant');
}

//get icon name and signature
Map<String, String> extractIconData(Element dtElement) {
  final nameElement = dtElement.querySelector('span.name a');

  final name = nameElement?.text.trim() ?? '';

  return {
    'name': name,
  };
}

Future<List<Map<String, String>>> scrapeIcons() async {
  final htmlContent = await fetchPage();
  final document = parseHtml(htmlContent);
  final dtElements = getConstants(document);

  final icons = <Map<String, String>>[];

  for (final dt in dtElements) {
    final iconData = extractIconData(dt);
    if (iconData['name']!.isNotEmpty) {
      icons.add(iconData);
    }
  }

  return icons;
}

//generate the new gallery_icons_data.dart file in the right location
Future<void> generateDartFile(List<Map<String, String>> icons) async {
  final buffer = StringBuffer()
    // HEADER
    ..writeln('// Flutter imports:')
    ..writeln("import 'package:flutter/cupertino.dart';\n")
    ..writeln('// Project imports:')
    ..writeln("import 'gallery_icon/gallery_icon.dart';\n")
    ..writeln(
      '// this is the full list of all cupertino icons in Alphabetical order',
    )
    ..writeln(
      '// source: https://api.flutter.dev/flutter/cupertino/CupertinoIcons-class.html#constants',
    )
    ..writeln('/// List of all cupertino icons')
    ..writeln('List<GalleryIcon> cupertinoIcons = [\n');

  // ICON ENTRIES
  for (final icon in icons) {
    final name = icon['name']!;
    // SKIP iconFont and iconFontPackage
    if (name == 'iconFont' || name == 'iconFontPackage') continue;
    buffer
      ..writeln('  // $name')
      ..writeln('  GalleryIcon(')
      ..writeln('    icon: CupertinoIcons.$name,')
      ..writeln("    name: '$name',")
      ..writeln('    aliases: [],')
      ..writeln('  ),\n');
  }

  // END OF LIST
  buffer.writeln('];');

  //FIXED DIRECTORY ISSUE
  final projectRoot = Directory.current.path;

  final outputPath = p.join(
    projectRoot,
    'lib',
    'screens',
    'icons',
    'gallery_icons_data.dart',
  );

  final file = File(outputPath);

  // Create missing directories
  file.parent.createSync(recursive: true);

  // Write file
  await file.writeAsString(buffer.toString());

  print('Successfully generated: $outputPath');
}

void main() async {
  try {
    final icons = await scrapeIcons();

    // Debug print
    icons.take(10).forEach((icon) {
      print('Name: ${icon['name']}');
    });

    // Generate Dart file
    await generateDartFile(icons);
  } catch (e) {
    print('Error: $e');
  }
}
