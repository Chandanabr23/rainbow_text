# Rainbow Text

A customizable Flutter widget for rendering text with beautiful linear gradients.

## Features

*   Apply linear gradients to text.
*   Support for horizontal and vertical gradients.
*   Customizable colors and styles.

## Getting started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  rainbow_text: ^0.0.1
```

## Usage

Import the package:

```dart
import 'package:rainbow_text/rainbow_text.dart';
```

Use the `RainbowText` widget:

```dart
RainbowText(
  'Hello Rainbow!',
  colors: [Colors.red, Colors.blue, Colors.green],
  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
)
```

Vertical gradient:

```dart
RainbowText(
  'Vertical Gradient',
  colors: [Colors.orange, Colors.purple],
  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
  direction: GradientDirection.vertical,
)
```

## Additional information

This package is for demonstration purposes.
