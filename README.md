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
  - [Scroll Controller](#scroll-controller)
  - [Fully Customizable](#fully-customizable)
- [Components and Settings](#components-and-settings)
  - [Components View](#components-view)
    - [Component Pillbox Configuration 1](#component-pillbox-configuration-1)
    - [Component Pillbox Configuration 2](#component-pillbox-configuration-2)
    - [Component Pillbox Configuration 3](#component-pillbox-configuration-3)
    - [Component Pillbox Configuration 4](#component-pillbox-configuration-4)
    - [Component Dropdown Overlay Configuration 1](#component-dropdown-overlay-configuration-1)
    - [Component Dropdown Overlay Configuration 2](#component-dropdown-overlay-configuration-2)
    - [Component Dropdown Modal Configuration 1](#component-dropdown-modal-configuration-1)
    - [Component Dropdown Modal Configuration 2](#component-dropdown-modal-configuration-2)
  - [TreeView Components with Settings](#tree-view-components-with-settings)
- [Customization](#customization)
  - [By Settings](#by-settings)
    - [Use global settings to customize all components of Select2dot1 widget](#use-global-settings-to-customize-all-components-of-select2dot1-widget)
    - [Use single component settings to customize only one component of Select2dot1 widget](#use-single-component-settings-to-customize-only-one-component-of-select2dot1-widget)
  - [By Builder](#by-builder)
    - [Create your completly own component](#create-your-completly-own-component)
    - [Use default components](#use-default-components)
- [Model Structur Data](#model-structur-data)
- [Controllers](#controllers)
  - [SelectDataController](#selectdatacontroller)
- [Contributing](#contributing)
  - [Issues](#issues)
  - [Security](#security)
  - [Contributors](#contributors)
- [Q&A](#qa)
- [FAQ](#faq)
  - [How to get selected item?](#how-to-get-selected-item)
  - [How to init selected data?](#how-to-init-selected-data)
  - [How to used only overlay or modal mode on all platforms?](#how-to-used-only-overlay-or-modal-mode-on-all-platforms)
  - [How to set NO group select?](#how-to-set-no-group-select)
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
  ];
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

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/scroll_controller.gif)

### Fully Customizable

All components of Select2dot1 are fully customizable by [settings](#by-settings) and [builder](#by-builder). If you want to change something that is not available in settings, let's make yor own component by builder. Check [Customization](#customization) section for more information.

## Components and Settings

### Components View

In this section you can see how components of Select2dot1 widget look like and see hierarchy. You can also see how to customize them by [settings](#by-settings) and [builder](#by-builder). For more details hierarchy of components , go to [Tree View Components with Settings](#tree-view-components-with-settings) section.


#### **Component Pillbox Configuration 1**

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/pillbox_configuration_1.png)

1. Pillbox
2. PillboxTitle
3. PillboxContent
4. PillboxContentMulti / PillboxContentSingle
5. SelectEmptyInfo
6. PillboxIcon

____________________________________________________________________________________________

#### **Component Pillbox Configuration 2**

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/pillbox_configuration_2.png)

1. Pillbox
2. PillboxTitle
3. PillboxContent
4. PillboxContentMulti
5. SelectChip
6. PillboxIcon

____________________________________________________________________________________________

#### **Component Pillbox Configuration 3**

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/pillbox_configuration_3.png)

1. Pillbox
2. PillboxTitle
3. PillboxContent
4. PillboxContentMulti
5. SelectOverloadInfo
6. PillboxIcon

____________________________________________________________________________________________

#### **Component Pillbox Configuration 4**

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/pillbox_configuration_4.png)

1. Pillbox
2. PillboxTitle
3. PillboxContent
4. PillboxContentSingle
5. SelectSingle
6. PillboxIcon

____________________________________________________________________________________________

#### **Component Dropdown Overlay Configuration 1**

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/overlay_configuration_1.png)

1. DropdownOverlay, DropdownContentOverlay
2. SearchBarOverlay
3. ListDataViewOverlay
4. CategoryNameOverlay
5. CategoryItemOverlay

____________________________________________________________________________________________

#### **Component Dropdown Overlay Configuration 2**

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/overlay_configuration_2.png)

1. DropdownOverlay, DropdownContentOverlay
2. SearchBarOverlay
3. SearchEmptyOverlay

____________________________________________________________________________________________

#### **Component Dropdown Modal Configuration 1**

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/modal_configuration_1.png)

1. showModalBottomSheet, DropdownModal, DropdownContentModal
2. TitleModal
3. ButtonModal
4. SearchBarModal
5. ListDataViewModal
6. CategoryNameModal
7. CategoryItemModal

____________________________________________________________________________________________

#### **Component Dropdown Modal Configuration 2**

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/modal_configuration_2.png)

1. showModalBottomSheet, DropdownModal, DropdownContentModal
2. TitleModal
3. ButtonModal
4. SearchBarModal
5. SearchEmptyModal

____________________________________________________________________________________________

### Tree View Components with Settings

You can see TreeView components with settings [there](https://miro.com/app/live-embed/uXjVP25lfEY=/?moveToViewport=-3198,-1103,6438,2600&embedId=52335582682).
Tree View was created by [Miro](https://miro.com/). **If you want customize components of Select2dot1 widget, you can use Tree View to see all components and settings. The most helpful site - You must see it.**


## Customization

If you want to customize Select2dot1 widget you can do it by settings and builder. First try to use settings to customize, if you can't find what you need, use builder.

### By Settings

#### **Use global settings to customize all components of Select2dot1 widget**

You can pass global settings to Select2dot1 widget. Global settings will be used by all components of Select2dot1 widget.

In this example we will customize mainColor and fontFamily for all components of Select2dot1 widget.

```dart
Select2dot1(
  selectDataController: SelectDataController(data: exampleData),
  globalSettings: const GlobalSettings(
    fontFamily: 'Roboto',
    mainColor: Colors.blue,
  ),
);
```

#### **Use single component settings to customize only one component of Select2dot1 widget**

You can pass single component settings to Select2dot1 widget. Single component settings will be used only by one component of Select2dot1 widget.

In this example we will customize only CategoryNameOverlay component and CategoryItemOverlay component in Dropdown (change visible only on desktop overlay).

```dart
Select2dot1(
  selectDataController: SelectDataController(data: exampleData),
  categoryNameOverlaySettings: CategoryNameOverlaySettings(
    constraints: const BoxConstraints(minHeight: 27),
    textStyle: const TextStyle(
      color: Color(0xFF6B7893),
      fontSize: 14,
      fontWeight: FontWeight.w500,
     ),
    defaultDecoration: const BoxDecoration(color: Colors.transparent),
    hoverDecoration:
        BoxDecoration(color: const Color(0xFF00183D).withOpacity(0.5)),
  ),
  categoryItemOverlaySettings: CategoryItemOverlaySettings(
    constraints: const BoxConstraints(minHeight: 35),
    defaultTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    selectedTextStyle: const TextStyle(
      color: Color(0xFF1DEDB2),
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    iconSize: 14,
    iconSelectedColor: const Color(0xFF1DEDB2),
    defaultDecoration: const BoxDecoration(color: Colors.transparent),
    hoverDecoration:
        BoxDecoration(color: const Color(0xFF00183D).withOpacity(0.5)),
    showExtraInfo: extraInfoInDropdown,
  ),
);
```

### By Builder

In builder you can customize all components of Select2dot1 widget. You can use your own components or use default components that are available in Select2dot1 widget.

#### **Create your completly own component**

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

#### **Use default components**

If you want change layout of component which includes a lot of other components, you can use default components that are available in Select2dot1 widget. You can use them by passing them to Select2dot1Builder class.
**Remember that when using this builder, you must ensure the correctness of the written code yourself.**

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

## Model Structur Data

To use Select2dot1 widget you have to pass data to SelectDataController. Data must be in list of SingleCategoryModel. 

SingleCategoryModel is a model which contains data about single category. 
Parameters:
* nameCategory - name of category (It is optional if you don't want to show group select)
* singleItemCategoryList - list of SingleItemCategoryModel (It is required)


SingleItemCategoryModel is a model which contains data about single item in category.
Parameters:
* nameSingleItem - visible name of single item (It is required)
* [value](#value-parametr-in-singleitemcategorymodel) - value of single item (It is optional)
* extraInfoSingleItem - extra info about single item (It is optional)
* avatarSingleItem - avatar of single item (It is optional)

### Value parametr in SingleItemCategoryModel

It used to get specific id of single item. It's necessary when you want to distinguish between single items with the same nameSingleItem.

```dart
static const List<SingleCategoryModel> exampleData = [
  SingleCategoryModel(
    singleItemCategoryList: [
      SingleItemCategoryModel(nameSingleItem: 'Alabama', value: 'Alabama1'),
      SingleItemCategoryModel(nameSingleItem: 'Alabama', value: 'Alabama2'),
      SingleItemCategoryModel(nameSingleItem: 'Arkansas'),
      SingleItemCategoryModel(nameSingleItem: 'Illonois'),
    ],
  ),
];
```

### Example data

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
    SingleCategoryModel(
      nameCategory: 'UX Designer',
      singleItemCategoryList: [
        SingleItemCategoryModel(
          nameSingleItem: 'Jan Foxstein',
          extraInfoSingleItem: 'Full time',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Jhony Steward',
          extraInfoSingleItem: 'Part time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('JS', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
  ];
```

## Controllers

### SelectDataController

SelectDataController is a controller that is used to manage data in Select2dot1 widget. You can use it to add, remove, select and deselect data. All data that you want to display in Select2dot1 widget must be added to SelectDataController. 
**Remember that when isMultiple is false, you can add only one position to initialSelectedData**.

In SelectDataController you can also set: 
* inital selected data
* is multiple select or single select

```dart
Select2dot1(
  selectDataController: 
    SelectDataController(
      data: exampleData, 
      isMultiple: false, 
      initialSelectedData: [ // Remember that when isMultiple is false, you can add only one position to initialSelectedData.
        SingleItemCategoryModel(
          nameSingleItem: 'Stuart Resch',
          value: 'Stuart Resch 1', 
        ),
      ],
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

### How to get selected item?

Use 'onChanged' Callback Function

You can pass callback function to Select2dot1 widget. This function will be called every time when user select an item.

```dart
Select2dot1(
    selectDataController: SelectDataController(data: exampleData),
    onChanged: (value) {
        print(value); // value is a list of selected items
    },
),
```

### How to init selected data?

```dart
Select2dot1(
    selectDataController: SelectDataController(data: exampleData, 
    initialSelectedData: [
        SingleItemCategoryModel(
          nameSingleItem: 'Alabama',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'California',
        ),
      ],
    ),
),
```

### How to used only overlay or modal mode on all platforms?

It is not possible to use only overlay or modal mode on all platforms. It is automatically set by the package. Overlay mode is used on desktop and modal mode is used on mobile.

### How to set NO group select?

If you dont want to group select, you dont need to use name parameter in SingleCategoryModel.

```dart
static const List<SingleCategoryModel> exampleData3 = [
  SingleCategoryModel(
    nameCategory: null, // If you dont want to group select, you dont need to use name parameter in SingleCategoryModel or set it to null.
    singleItemCategoryList: [
      SingleItemCategoryModel(nameSingleItem: 'Alabama',),
      SingleItemCategoryModel(nameSingleItem: 'Arkansas'),
      SingleItemCategoryModel(nameSingleItem: 'Illonois'),
    ],
  ),
];
```

![](https://github.com/romanjrdykyj/select2dot1/blob/main/img/no_group_example.png)

## License

This package is licensed under the [MIT license](https://opensource.org/licenses/MIT). To see the full license text, see the [LICENSE](https://pub.dev/packages/select2dot1/license) file.