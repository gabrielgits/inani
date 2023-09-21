## Inani

Flutter Package to help you animate your widgets on entry.

| **Support** | Android | iOS | Linux | macOS | Web | Windows |
|-------------|---------|------|-------|--------|-----|-------------|

## Features

- container
- top
- bottom
- cross


## Getting started

2. To use this package, add inani as dependency in your `pubspec.yaml` file:

```yaml
dependencies:
   inani:
```

3. Import the package into your dart file:

```dart
import 'package:inani/inani.dart';
```

## Usage

```dart
bottomNavigationBar: SizedBox(
    height: 50,
        child: InaniBottom(
            child: InaniContainer(
                color: Colors.pink,
                width: 200,
                height: 40,
            ),
        ),
),

```

[Full Demo Here](https://github.com/gabrielgits/inani/tree/main/example)

[<img src="https://raw.githubusercontent.com/gabrielgits/inani/main/example/example1.png" width="180" />](https://github.com/gabrielgits/bform/tree/inani/example)

## Additional information

For any bugs, issues and more information, please contact the package authors on email: gvgabrielvieiragabrielvieira@gmail.com.
