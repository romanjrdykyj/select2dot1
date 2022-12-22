[![platform](https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter)](https://flutter.dev)
[![build](https://img.shields.io/badge/build-passing-brightgreen)](https://pub.dev/packages/select2dot1)
[![pub package](https://img.shields.io/pub/v/select2dot1.svg)](https://pub.dartlang.org/packages/select2dot1)
[![pub points](https://img.shields.io/pub/points/select2dot1?color=2E8B57&label=pub%20points)](https://pub.dev/packages/select2dot1/score)
[![License: MIT](https://img.shields.io/badge/License-MIT-green?color=red)](https://pub.dev/packages/select2dot1/license)
[![Buy Me A Coffee](https://img.shields.io/badge/Donate-Buy%20Me%20A%20Coffee-yellow.svg)](https://www.buymeacoffee.com/romanjrdykyj)

# Select2dot1

## Introduction

Select2dot1 give you a customizable single/multiple select box with support for 
searching, group option, extra info and avatar. Select2dot1 works using overlay
(web, desktop) and modal (mobile) and is fully customizable by settings and builder.

Demo web example: https://select2dot1.site

Author site: https://romanjrdykyj.site

## Screenshots

| Desktop Example                             | Mobile Example                                |
| :-----------------------------------------: | :-------------------------------------------: |
| ![](https://github.com/romanjrdykyj/select2dot1/blob/main/screenshots/desktop_example.webp) | ![](https://github.com/romanjrdykyj/select2dot1/blob/main/screenshots/mobile_example.webp) |

## Table of Contents
- [Introduction](#Introduction)
- [Screenshots](#screenshots)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
  - [ScrollController](#scroll-controller)
- [Contributing](#contributing)
  - [Issues](#issues)
  - [QA](#qa)
  - [Security](#security)
  - [Contributors](#contributors)
- [FAQ](#faq)
- [License](#license)

## Installation

1. Add following dependency in pubspec.yaml file.

```bash
flutter pub add select2dot1
```
2. Add this import to your file.

```bash
import 'package:select2dot1/select2dot1.dart';
```

3. Now you can use Select2dot1 widget. Go to Usage section and see how to use it.

## Usage

1. On the first step you need to create a list of data that you want to display in.

```dart
static const List<SingleCategoryModel> exampleData = [
    SingleCategoryModel(
      nameCategory: 'Team Leader',
      singleItemCategoryList: [
        SingleItemCategoryModel(
          nameSingleItem: 'David Eubanks',
          extraInfoSingleItem: 'Full time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/avatar1.jpg'),
          ),
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Stuart Resch',
          extraInfoSingleItem: 'Part time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('SR', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
```

2. Use Select2dot1 widget and pass your data to it. You can also pass [scrollController](#scroll-controller) if you want to use it.

```dart
Select2dot1(
    selectDataController: SelectDataController(data: exampleData),
    scrollController: scrollController,
    ),
```

## Features

### Scroll Controller

ScrollController is used to control anchor position of dropdown menu. You can pass your own ScrollController to Select2dot1 widget.

```dart
final ScrollController scrollController = ScrollController();
Select2dot1(
    selectDataController: SelectDataController(data: exampleData),
    scrollController: scrollController,
    ),
```


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

### Issues

If you find any issues, please report them [here](https://github.com/romanjrdykyj/select2dot1/issues).

Please do not ask questions in the issue tracker. Use [Q&A](#qa) section instead.

Please do not report security vulnerabilities on the public issue tracker. The [SECURITY](#security) page details the procedure for disclosing security issues.

### QA

If you have any questions, feel free to ask them [here](https://github.com/romanjrdykyj/select2dot1/discussions).

### Security

If you discover any security related issues, please go to [SECURITY](https://github.com/romanjrdykyj/select2dot1/blob/main/SECURITY.md) page.

### Contributors

- Roman Dykyj (@romanjrdykyj)

## FAQ

Coming soon...

## License

This package is licensed under the [MIT license](https://opensource.org/licenses/MIT). To see the full license text, see the [LICENSE](https://pub.dev/packages/select2dot1/license) file.