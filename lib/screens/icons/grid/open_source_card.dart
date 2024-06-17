import '../../../app_exporter.dart';
import 'section_card.dart';

class OpenSourceCard extends StatelessWidget {
  const OpenSourceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      label: 'Open Source',
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'This Cupertino Icons Gallery is fully Open Source and available for use with the Apache-2.0 License. Feel free to clone, fork, star and use it in your own projects but above all contribute to it. Thanks.',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: appColor,
            fontSize: 16,
          ),
        ),
        const Spacing(of: spacing16),
        AppButton(
          text: 'Open Repo on Github'.toUpperCase(),
          onTap: openGithub,
          iconWidget: const Icon(
            Ionicons.logo_github,
            color: appWhite,
          ),
          textColor: appWhite,
          buttonColor: appColor,
        ),
      ],
    );
  }
}
