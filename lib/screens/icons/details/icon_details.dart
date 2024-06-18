// Project imports:

import '../../../app_exporter.dart';
import '../icon_providers.dart';
import 'details_appbar.dart';
import 'icon_code_snippet.dart';

///[IconDetails] class
class IconDetails extends ConsumerWidget {
  ///[IconDetails] constructor
  const IconDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // selectedIcon
    final selectedGalleryIcon = ref.watch(selectedGalleryIconProvider);

    const packageSnippet = "import 'package:flutter/cupertino.dart';";

    final largeCodeSnippet = '''
Icon(
  CupertinoIcons.${selectedGalleryIcon.name},
),
''';

    // check if we are on mobile
    final responsiveness = ref.watch(responsivenessProvider(context));

    final isMobile = responsiveness.isMobileScreen;

    final smallCodeSnippet = selectedGalleryIcon.name;

    // iconDataSnippet
    final iconDataSnippet = 'CupertinoIcons.${selectedGalleryIcon.name}';

    return AnimatedContainer(
      duration: oneSecond,
      height: double.infinity,
      curve: Curves.easeInOutQuint,
      width: iconDetailsWidth,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: isMobile ? borderRadius0 : borderRadius8,
      ),
      // this here is to prevent overflow errors when opening up the side bar
      child: Scaffold(
        backgroundColor: appColor,
        appBar: detailsAppbar(),
        body: Padding(
          padding: padding8,
          child: ListView(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: detailsColor.withOpacity(.3),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    selectedGalleryIcon.icon,
                    color: detailsTextColor,
                    size: 128,
                  ),
                ),
              ),
              // this is a container that will display a code snippet for the icon with an option to copy it
              // to the clipboard
              const Spacing(of: spacing32),

              const IconCodeSnippet(
                codeSnippet: packageSnippet,
                title: 'Import the Package',
              ),

              const Spacing(of: spacing16),
              IconCodeSnippet(
                codeSnippet: iconDataSnippet,
                title: 'Icon Data',
              ),

              const Spacing(of: spacing16),
              IconCodeSnippet(
                codeSnippet: largeCodeSnippet,
                title: 'With Icon Widget',
              ),

              const Spacing(of: spacing16),
              IconCodeSnippet(
                codeSnippet: smallCodeSnippet,
                title: 'Flutter ID',
              ),

              const Spacing(of: spacing32),
            ],
          ),
        ),
      ),
    );
  }
}
