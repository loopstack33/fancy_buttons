# fancy_button_new
[![Github stars](https://img.shields.io/github/stars/loopstack33/fancy_buttons?logo=github)](https://github.com/loopstack33/fancy_buttons)
[![Pub Version](https://img.shields.io/pub/v/fancy_button_new?color=blue&logo=dart)](https://pub.dev/packages/fancy_button_new)

Fancy Buttons is a flutter widget library, include buttons for which is fully customizable and can be extended on request.
No more extra hassle for all the extra working around with buttons.

## Installation
1) Add this to your packages pubspec.yaml file:
```yaml
dependencies:
   fancy_button_new: <latest version>
```
2) Install it
   You can install it from the command line:
```bash
$ flutter pub get
```
3) Import it
   Now in Dart code, you can use:
```dart
import 'package:fancy_button_new/fancy_button_new.dart';
```

## Recommendation
We recommend you to using the latest version.

## Using

### Enabled State.

You need to use just the following code:

### Default Type

```dart
MyFancyButton(
   isIconButton: isIconButton,
   fontSize: fontSize,
   text: text,
   tap: tap,
   buttonColor: buttonColor,
   hasShadow: hasShadow),
```

Screenshot

<img src="https://user-images.githubusercontent.com/99548269/205614250-c0af073b-1705-4781-957d-0ab59ef95408.png" align="center" style="width: 50%" />

####### ----- NEW Gradient Button ----- #######

```dart
MyFancyButton(
   isGradient:true,
   gradient:LinearGradient(
      colors: [
      Color(0xFF6B5AAF),
      Color(0xFF21E1CA),
      ],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      ),
   isIconButton: false,
   fontSize: 15,
   text: "Simple Button",
   tap: (){},
   buttonColor: null,
   hasShadow: false),
```

####### ---------------------------- #######

### Simple Button

```dart
MyFancyButton(
   isIconButton: false,
   fontSize: 15,
   text: "Simple Button",
   tap: (){},
   buttonColor: purpleLight,
   hasShadow: false),
```

### Colored Button

```dart
 MyFancyButton(
   isIconButton: false,
   fontSize: 15,
   text: "Colored Button",
   tap: (){},
   fontColor: Colors.white,
   buttonColor: purpleColor,
   hasShadow: false),
```

### Rounded Button

```dart
MyFancyButton(
   isIconButton: false,
   fontSize: 15,
   borderRadius: 10,
   text: "Rounded Button",
   tap: (){},
   fontColor: Colors.white,
   buttonColor: gmail,
   hasShadow: false),
```

### Shadow Button

```dart
MyFancyButton(
   isIconButton: false,
   fontSize: 15,
   spreadRadius: 0,
   blurRadius: 4,
   offset: const Offset(0, 4),
   shadowColor: Colors.black.withOpacity(0.25),
   text: "Shadow Button",
   tap: (){},
   fontColor: Colors.white,
   buttonColor: greenColor,
   hasShadow: true),
```

### Image Button

```dart
MyFancyButton(
   isIconButton: true,
   image: "assets/icons/select.png",
   imageHeight: 20,
   imageWidth: 20,
   fontSize: 15,
   text: "Image Button",
   tap: (){},
   fontColor: Colors.white,
   buttonColor: infoColor,
   hasShadow: false),
```

### Outline Button

```dart
MyFancyButton(
   isIconButton: false,
   borderColor: Colors.white,
   borderRadius: 10,
   fontSize: 15,
   text: "Outlined Button",
   tap: (){},
   fontColor: Colors.white,
   buttonColor: black,
   hasShadow: true),
```