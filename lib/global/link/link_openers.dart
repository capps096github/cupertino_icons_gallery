// Project imports:
import '../../app_exporter.dart';

///This Opens the links
Future<void> linkLauncher(String link) async {
  // if (await canLaunchUrl(Uri.parse(link))) {
  await launchUrl(Uri.parse(link));
  // } else {
  //   throw 'Could not launch $link';
  // }
}

/// Open Xephas Twitter Account
Future<void> openXephasTwitter() async {
  await linkLauncher(xephasTwitter);
}

/// Open Xephas Twitter Account
Future<void> openXephasPortfolio() async {
  await linkLauncher(xephasTwitter);
}

/// Open Xephas Twitter Account
Future<void> openGithub() async {
  await linkLauncher(repoLink);
}

/// Open Xephas Twitter Account(For Flutter Community)
Future<void> visitFlutterCommunity() async {
  await linkLauncher(flutterCommunityLink);
}
