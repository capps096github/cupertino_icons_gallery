import '../../gallery_exporter.dart';
import 'drawer_icon.dart';
import 'rail_items.dart';
import 'rail_menu_item.dart';
import 'rail_provider.dart';

class HomeNavRail extends ConsumerWidget {
  const HomeNavRail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // check if we are on Desktop
    // final isDesktop = CalcutResponsive.isDesktop(context);

    //App Theme colorScheme
    final colorScheme = Theme.of(context).colorScheme;
    final primary = colorScheme.primary;
    final onPrimary = colorScheme.onPrimary;

    // isRailOpenProvider
    final isRailOpen = ref.watch(isRailOpenProvider.state).state;

    return Material(
      color: primary,
      elevation: 8,
      child: AnimatedContainer(
        duration: fourHundredMilliseconds,
        width: isRailOpen ? sideBarDesktopWidth : sideBarTabletWidth,
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              width: .25,
              color: onPrimary,
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 8,
        ),
        child: ExpandedScrollingColumn(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Drawer Icon
            const DrawerIcon(),


            // divider
            Center(
              child: ThickHorizontalDivider(
                dividerColor: onPrimary,
                thickness: 4,
              ),
            ),

            //top rail items
            ...List.generate(
              topRailItems.length,
              (index) {
                // get the item
                final railItem = topRailItems[index];

                return RailMenuItem(
                  railItem: railItem,
                  itemIndex: index,
                );
              },
            ),

            const Spacer(),

          
            if (isRailOpen) ...[
              // divider
              const VerticalSpacing(of: 10),
              
              //  from
              // show my profile pic if not open
              // const FromXephas(),
            ],
          ],
        ),
      ),
    );
  }
}
