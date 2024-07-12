<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# HorizontalExpansionTile

`HorizontalExpansionTile` is a custom Flutter widget that allows for an expansion tile that can expand horizontally or vertically, making it suitable for usage within horizontal `ListView`s or other flexible layouts where traditional `ExpansionTile` widgets cannot be used.

## Features

- Expandable tiles that can expand either horizontally or vertically.
- Customizable titles, subtitles, leading, and trailing widgets.
- Smooth animations for expanding and collapsing.
- Suitable for use inside horizontal `ListView`s.
- Flexibility to adjust cross-axis alignment.

## Getting started

To start using `HorizontalExpansionTile`, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  horizontal_expansion_tile: ^0.0.1
```

Then, run `flutter pub get` to install the package.

## Usage

Here is a basic example of how to use the `HorizontalExpansionTile`:

```dart
import 'package:flutter/material.dart';
import 'package:horizontal_expansion_tile/horizontal_expansion_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Horizontal Expansion Tile Example')),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            HorizontalExpansionTile(
              title: Text('Tile 1'),
              subtitle: Text('Subtitle 1'),
              leading: Icon(Icons.label),
              trailing: Icon(Icons.expand_more),
              axis: Axis.horizontal,
              children: [
                Container(width: 100, color: Colors.red, child: Text('Child 1')),
                Container(width: 100, color: Colors.blue, child: Text('Child 2')),
              ],
            ),
            HorizontalExpansionTile(
              title: Text('Tile 2'),
              subtitle: Text('Subtitle 2'),
              leading: Icon(Icons.label),
              trailing: Icon(Icons.expand_more),
              axis: Axis.horizontal,
              children: [
                Container(width: 100, color: Colors.green, child: Text('Child 1')),
                Container(width: 100, color: Colors.yellow, child: Text('Child 2')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

For more detailed examples, check the `/example` folder in the package repository.

## Additional information

For more information about this package, including how to contribute, file issues, or seek support, please visit the [GitHub repository](https://github.com/imravi76/horizontal_expansion_tile).

To contribute to the project, please fork the repository, create a feature branch, and submit a pull request. We welcome contributions and will review them as soon as possible.

If you encounter any issues, please file them in the GitHub repository, and we will respond as promptly as we can.

Thank you for using `HorizontalExpansionTile`!
