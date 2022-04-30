import 'package:flutter/cupertino.dart';

import '../../gallery_exporter.dart';
import '../navbar/navbar_notifier.dart';
import 'leading_icon.dart';
import 'rail_item.dart';
import 'rail_provider.dart';

class RailMenuItem extends ConsumerWidget {
  const RailMenuItem({
    required this.railItem,
    required this.itemIndex,
    this.textColor,
    this.backColor,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final RailItem railItem;

// index, and this will be used to com[pare with the nav bar index to detect the selected item
  final int itemIndex;

  // ontap
  final VoidCallback? onTap;

  // text and background color
  final Color? textColor, backColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // check if we are on Desktop
    // final isDesktop = CalcutResponsive.isDesktop(context);
    // isRailOpenProvider
    final isRailOpen = ref.watch(isRailOpenProvider.state).state;

    // nav bar index
    final navBarIndex = ref.watch(selectedNavBarIndexProvider.state).state;

    final isSelected = (itemIndex == navBarIndex);

    //App Theme colorScheme
    final colorScheme = Theme.of(context).colorScheme;
    final onPrimary = colorScheme.onPrimary;
    final primary = colorScheme.primary;
    // secondary

    final iconColor = (isSelected ? primary : onPrimary);
    final backgroundColor = backColor ?? (isSelected ? onPrimary : primary);

// text style for the rail item
    final railTextStyle = TextStyle(
      fontWeight: isSelected ? FontWeight.w900 : null,
      fontSize: 17,
      color: iconColor,
    );

    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Tooltip(
        message: railItem.tooltip,
        textStyle: TextStyle(color: onPrimary),
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(4),
        ),
        child: AnimatedSwitcher(
          duration: quarterSeconds,
          child: isRailOpen
              ? ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onTap: onTap ??
                      () {
                        ///[Notify Listeners]
                        ref.read(selectedNavBarIndexProvider.state).state =
                            itemIndex;
                      },
                  leading: LeadingIcon(
                    iconColor: iconColor,
                    icon: isSelected
                        ? railItem.selectedIcon
                        : railItem.unselectedIcon,
                  ),
                  title: Text(
                    railItem.label,
                    style: railTextStyle,
                    maxLines: 1,
                  ),
                  trailing: isSelected
                      ? Icon(
                          CupertinoIcons.option,
                          color: iconColor,
                        )
                      : null,
                )
              : InkWell(
                  borderRadius: BorderRadius.circular(6),
                  onTap: onTap ??
                      () {
                        ///[Notify Listeners]
                        ref.read(selectedNavBarIndexProvider.state).state =
                            itemIndex;
                      },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: LeadingIcon(
                      iconColor: iconColor,
                      icon: isSelected
                          ? railItem.selectedIcon
                          : railItem.unselectedIcon,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
