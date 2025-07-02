import 'package:flutter/material.dart';

import '../animations/animated_item.dart';

class ResponsiveWrap extends StatelessWidget {
  final List<Widget> children;
  final double itemWidth;
  final double itemHeight;
  final double maxSpacing;

  const ResponsiveWrap({
    super.key,
    required this.children,
    required this.itemWidth,
    required this.itemHeight,
    this.maxSpacing = 6.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = constraints.maxWidth;

        if (totalWidth < itemWidth * 2) {
          return Wrap(
            spacing: maxSpacing,
            runSpacing: maxSpacing,
            children: List.generate(children.length, (index) {
              return SizedBox(
                width: totalWidth,
                height: itemHeight,
                child: AnimatedItem(
                  delay: Duration(milliseconds: 50 * index),
                  child: children[index],
                ),
              );
            }),
          );
        }

        int itemsPerRow = totalWidth ~/ (itemWidth + maxSpacing);
        itemsPerRow = itemsPerRow.clamp(1, children.length);

        final totalSpacing = (itemsPerRow - 1) * maxSpacing;
        final availableWidthForItems = totalWidth - totalSpacing;
        final adjustedItemWidth = availableWidthForItems / itemsPerRow;

        return Wrap(
          spacing: maxSpacing,
          runSpacing: maxSpacing,
          children: List.generate(children.length, (index) {
            return SizedBox(
              width: adjustedItemWidth,
              height: itemHeight,
              child: AnimatedItem(
                delay: Duration(milliseconds: 50 * index),
                child: children[index],
              ),
            );
          }),
        );
      },
    );
  }
}
