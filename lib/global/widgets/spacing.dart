// Flutter imports:
import 'package:flutter/material.dart';

///Adds space vertically
class VerticalSpacing extends StatelessWidget {
  ///vertical spacing constructor
  const VerticalSpacing({required this.of, super.key});
  ///[of] is the space to be added
  final double of;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: of);
  }
}

///Adds space Horiz0ntally
class HorizontalSpacing extends StatelessWidget {
  ///[HorizontalSpacing] constructor
  const HorizontalSpacing({required this.of, super.key});
  ///[of] is the space to be added
  final double of;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: of);
  }
}

///Adds space vertically in Sliver Widgets
class SliverVerticalSpacing extends StatelessWidget {
  ///[SliverVerticalSpacing] constructor
  const SliverVerticalSpacing({required this.of, super.key});
  ///[of] is the space to be added
  final double of;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: SizedBox(height: of));
  }
}
