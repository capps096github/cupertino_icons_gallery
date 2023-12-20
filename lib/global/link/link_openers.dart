// Project imports:
import '../../gallery_exporter.dart';

///This Opens the links
Future<void> linkLauncher(String link) async {
  // if (await canLaunchUrl(Uri.parse(link))) {
  await launchUrl(Uri.parse(link));
  // } else {
  //   throw 'Could not launch $link';
  // }
}

// Open Xephas Twitter Account
void openXephasTwitter() async {
  await linkLauncher(xephasTwitter);
}

// Open Xephas Twitter Account
void visitFlutterCommunity() async {
  await linkLauncher(flutterCommunityLink);
}
