library;

import 'package:flutter/material.dart';

/// A widget that displays text with a linear gradient.
class RainbowText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final List<Color> colors;
  final GradientDirection direction;

  const RainbowText(
    this.text, {
    super.key,
    this.style,
    required this.colors, // Force user to pick colors? Or provide defaults.
    this.direction = GradientDirection.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        final gradientColors = colors.length < 2
            ? (colors.isEmpty
                ? [Colors.black, Colors.black]
                : [colors[0], colors[0]])
            : colors;

        return LinearGradient(
          colors: gradientColors,
          begin: direction == GradientDirection.horizontal
              ? Alignment.centerLeft
              : Alignment.topCenter,
          end: direction == GradientDirection.horizontal
              ? Alignment.centerRight
              : Alignment.bottomCenter,
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: (style ?? const TextStyle()).copyWith(
          color: Colors.white, // Color must be white for ShaderMask to work
        ),
      ),
    );
  }
}

enum GradientDirection { horizontal, vertical }
