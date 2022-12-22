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
| ![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/desktop_example.webp) | ![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/mobile_example.webp) |

## Table of Contents
- [Introduction](#Introduction)
  - [Screenshots](#screenshots)
  - [Platform Support](#platform-support)
  - [Installation](#installation)
  - [Usage](#usage)
- [Features](#features)
  - [ScrollController](#scroll-controller)
  - ['onChanged' Callback Function](#onchanged-callback-function)
  - [Model Structor Data](#model-structur-data)
  - [Fully Customizable](#fully-customizable)
- [Customization](#customization)
  - [By Settings](#by-settings)
  - [By Builder](#by-builder)
- [Contributing](#contributing)
  - [Issues](#issues)
  - [Security](#security)
  - [Contributors](#contributors)
- [Q&A](#qa)
- [FAQ](#faq)
- [License](#license)

## Platform Support

| Android | iOS | Web | Linux | macOS | Windows |
| :-----: | :-: | :-: | :---: | :---: | :-----: |
|    ✔    |  ✔  |  ✔  |   ✔   |   ✔   |    ✔    |

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

#### Example

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/scrollcontroller.gif)

### 'onChanged' Callback Function

You can pass callback function to Select2dot1 widget. This function will be called every time when user select an item.

```dart
Select2dot1(
    selectDataController: SelectDataController(data: exampleData),
    onChanged: (value) {
        print(value); // value is a list of selected items
    },
    ),
```

### Model Structur Data

### Fully Customizable

All components of Select2dot1 are fully customizable by [settings](#by-settings) and [builder](#by-builder). If you want to change something that is not available in settings, let's make yor own component by builder. Check [Customization](#customization) section for more information.

## Customization

If you want to customize Select2dot1 widget you can do it by settings and builder. First try to use settings to customize, if you can't find what you need, use builder.

### By Settings

### By Builder

In builder you can customize all components of Select2dot1 widget. You can use your own components or use default components that are available in Select2dot1 widget.

`Create your completly own component`

You can create your own component by using Select2dot1Builder class. You have to pass your own component to Select2dot1Builder class and then pass this class to Select2dot1 widget. In builder you have access to all data that you need to create your own component.

```dart
Select2dot1(
    selectDataController: SelectDataController(data: exampleData),
    selectChipBuilder: (context, selectChipDetails) {
          return Container(
            height: 29,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            constraints: const BoxConstraints(maxWidth: 200),
            decoration: BoxDecoration(
              color: const Color(0xFF001029),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    selectChipDetails.singleItemCategory.getNameSingleItem,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0, left: 2.0),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        selectChipDetails.selectDataController
                            .removeSingleSelectedChip(
                          selectChipDetails.singleItemCategory,
                        );
                      },
                      child: const Icon(
                        Icons.clear,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
    ),
```

`Use default components`

If you want change layout of component which includes a lot of other components, you can use default components that are available in Select2dot1 widget. You can use them by passing them to Select2dot1Builder class.

```dart
Select2dot1(
  selectDataController: SelectDataController(data: exampleData),
  pillboxTitleSettings:
      const PillboxTitleSettings(title: 'Example use builder'),
  pillboxBuilder: (context, pillboxDetails) => Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: pillboxDetails.showDropdown,
      mouseCursor: SystemMouseCursors.click,
      onHover: (hoverState) => mounted
          ? setState(() => pillboxDetails.hover = hoverState)
          : null,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      child: Row( // In this builder I changed layout of pillbox (Column to Row)
        mainAxisSize: MainAxisSize.min,
        children: [
          pillboxDetails.pillboxTitle(),
          const SizedBox(width: 8),
          Expanded(child: pillboxDetails.pillboxContent()),
        ],
      ),
    ),
  ),
);
```


## Contributing

Pull requests (pull request template is available) are welcome. For major changes, please open an issue first to discuss what you would like to change. More information about contributing you can find [here](https://github.com/romanjrdykyj/select2dot1/blob/main/CONTRIBUTING.md). Remember to follow the [code of conduct](https://github.com/romanjrdykyj/select2dot1/blob/main/CODE_OF_CONDUCT.md).

## Issues

If you find any issues (bug, feature, performance or other), please report them [here](https://github.com/romanjrdykyj/select2dot1/issues).

Please do not ask questions in the issue tracker. Use [Q&A](#qa) section instead.

Please do not report security vulnerabilities on the public issue tracker. The [SECURITY](#security) page details the procedure for disclosing security issues.


## Security

If you discover any security related issues, please go to [SECURITY](https://github.com/romanjrdykyj/select2dot1/blob/main/SECURITY.md) page.

## Contributors

- Roman Dykyj (@romanjrdykyj)

## QA

If you have any questions, feel free to ask them [here](https://github.com/romanjrdykyj/select2dot1/discussions).

## FAQ

Coming soon...

## License

This package is licensed under the [MIT license](https://opensource.org/licenses/MIT). To see the full license text, see the [LICENSE](https://pub.dev/packages/select2dot1/license) file.