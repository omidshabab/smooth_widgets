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


# Smooth Widgets

Smooth Widgets is a collection of custom widgets for Flutter, designed to help you build beautiful and responsive user interfaces quickly and easily.




## Features

This package currently includes the following widgets:

- `SmoothTextButton:` A customizable button widget with smooth animations and multiple styles.


## Usage

To use Smooth Widgets in your Flutter project, simply add the following dependency to your pubspec.yaml file:

```dart
  dependencies:
    smooth_widgets: ^0.0.1
```

Then, import the package and use any of the included widgets in your Flutter code:

```dart
import 'package:smooth_widgets/smooth_widgets.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SmoothButton(
      text: 'Click me!',
      onPressed: () => print('Button pressed!'),
    );
  }
}
```

    
## Contributing

This package is open-source and contributions are always welcome! If you find a bug or have a feature request, please file an issue on GitHub.

If you would like to contribute code to this project, please fork the repository and submit a pull request.

## License

This package is released under the MIT License. See LICENSE file for details.

