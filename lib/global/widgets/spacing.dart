import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// with the help of `gap` package, this provides dynamic spacing between widgets
class Spacing extends StatelessWidget {
  /// dynamic [Spacing]  between widgets
  const Spacing({required this.of, super.key});

  /// amount of space between widgets
  final double of;

  @override
  Widget build(BuildContext context) {
    return Gap(of);
  }
}

/// Sliver version of [Spacing]
class SliverSpacing extends StatelessWidget {
  ///   dynamic spacing between widgets
  const SliverSpacing({required this.of, super.key});

  /// amount of space between widgets
  final double of;

  @override
  Widget build(BuildContext context) {
    return SliverGap(of);
  }
}

///Adds empty space in Sliver Widgets
class EmptySpace extends StatelessWidget {
  /// Empty Space
  const EmptySpace({super.key});
  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

///Adds empty space in Sliver Widgets
class SliverEmptySpace extends StatelessWidget {
  /// Empty Space for slivers
  const SliverEmptySpace({super.key});
  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(child: EmptySpace());
  }
}
