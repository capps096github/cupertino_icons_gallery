// Flutter imports:
import 'package:flutter/material.dart';

///Adds space vertically
class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({Key? key, required this.of}) : super(key: key);
  final double of;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: of);
  }
}


///Adds space Horiz0ntally
class HorizontalSpacing extends StatelessWidget {
  const HorizontalSpacing({Key? key, required this.of}) : super(key: key);
  final double of;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: of);
  }
}

///Adds space vertically in Sliver Widgets
class SliverVerticalSpacing extends StatelessWidget {
  const SliverVerticalSpacing({Key? key, required this.of}) : super(key: key);
  final double of;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: SizedBox(height: of));
  }
}
