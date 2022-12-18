import 'package:flutter/material.dart';
import 'package:select2dot1/select2dot1.dart';

class ExampleData {
  static const List<SingleCategoryModel> exampleData1 = [
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
      nameCategory: 'Programmer',
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
          nameSingleItem: 'Manuel Eyre',
          extraInfoSingleItem: 'Full time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/avatar2.jpg'),
          ),
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Robert Keller',
          extraInfoSingleItem: 'Part time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.brown,
            child: Text('RK', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'UX Designer',
      singleItemCategoryList: [
        SingleItemCategoryModel(
          nameSingleItem: 'Shirley Stark',
          extraInfoSingleItem: 'Part time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.purple,
            child: Text('SS', style: TextStyle(color: Colors.white)),
          ),
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Wendy Cangelosi',
          extraInfoSingleItem: 'Part time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.green,
            child: Text('WC', style: TextStyle(color: Colors.white)),
          ),
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Antoinette Herbert',
          extraInfoSingleItem: 'Full time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.orange,
            child: Text('AH', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
  ];

  static const List<SingleCategoryModel> exampleData2 = [
    SingleCategoryModel(
      nameCategory: 'Alaskan/Hawaiian Time Zone',
      singleItemCategoryList: [
        SingleItemCategoryModel(
          nameSingleItem: 'Alaska',
          extraInfoSingleItem: '1395 Lincoln Street',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Hawaii',
          extraInfoSingleItem: '4880 Michigan Avenue',
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'Pacific Time Zone',
      singleItemCategoryList: [
        SingleItemCategoryModel(
          nameSingleItem: 'California',
          extraInfoSingleItem: '3878 Chapel Street',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Nevada',
          extraInfoSingleItem: '4045 Lucy Lane',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Oregon',
          extraInfoSingleItem: '83 Kenwood Place',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Washington',
          extraInfoSingleItem: '3573 Pallet Street',
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'Mountain Time Zone',
      singleItemCategoryList: [
        SingleItemCategoryModel(
          nameSingleItem: 'Arizona',
          extraInfoSingleItem: '4473 Prospect Street',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Colorado',
          extraInfoSingleItem: '2247 Nuzum Court',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Idaho',
          extraInfoSingleItem: '1182 Bailey Drive',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Montana',
          extraInfoSingleItem: '4530 Elk City Road',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Nebraska',
          extraInfoSingleItem: '2012 Armbrester Drive',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'New Mexico',
          extraInfoSingleItem: '2393 Wines Lane',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'North Dakota',
          extraInfoSingleItem: '4190 Don Jackson Lane',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Utah',
          extraInfoSingleItem: '468 Green Acres Road',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Wyoming',
          extraInfoSingleItem: '1898 Sardis Sta',
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'Central Time Zone',
      singleItemCategoryList: [
        SingleItemCategoryModel(
          nameSingleItem: 'Alabama',
          extraInfoSingleItem: '4446 Jarvisville Road',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Arkansas',
          extraInfoSingleItem: '4111 Little Acres Lane',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Illonois',
          extraInfoSingleItem: '3444 Clark Street',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Iowa',
          extraInfoSingleItem: '4610 Lucy Lane',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Kansas',
          extraInfoSingleItem: '323 Stratford Drive',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Kentucky',
          extraInfoSingleItem: '3631 Vine Street',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Louisiana',
          extraInfoSingleItem: '3283 Godfrey Street',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Minnesota',
          extraInfoSingleItem: '4838 Ridenour Street',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Mississippi',
          extraInfoSingleItem: '38 Ray Court',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Missouri',
          extraInfoSingleItem: '1360 Bingamon Road',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Oklahoma',
          extraInfoSingleItem: '1636 Sundown Lane',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'South Dakota',
          extraInfoSingleItem: '1091 Elm Drive',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Texas',
          extraInfoSingleItem: '4764 Bond Street',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Tennessee',
          extraInfoSingleItem: '4540 Oakmound Road',
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'Eastern Time Zone',
      singleItemCategoryList: [
        SingleItemCategoryModel(
          nameSingleItem: 'Connecticut',
          extraInfoSingleItem: '695 Center Avenue',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Massechusetts',
          extraInfoSingleItem: '2085 Heron Way',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'North Carolina',
          extraInfoSingleItem: '1034 Conference Center Way',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'South Carolina',
          extraInfoSingleItem: '3865 Hickory Street',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'Vermont',
          extraInfoSingleItem: '3159 Sumner Street',
        ),
        SingleItemCategoryModel(
          nameSingleItem: 'West Virginia',
          extraInfoSingleItem: '2506 Hall Street',
        ),
      ],
    ),
  ];

  static const List<SingleCategoryModel> exampleData3 = [
    SingleCategoryModel(
      singleItemCategoryList: [
        SingleItemCategoryModel(nameSingleItem: 'Alabama', value: 'Alabama1'),
        SingleItemCategoryModel(nameSingleItem: 'Alabama', value: 'Alabama2'),
        SingleItemCategoryModel(nameSingleItem: 'Arkansas'),
        SingleItemCategoryModel(nameSingleItem: 'Illonois'),
        SingleItemCategoryModel(nameSingleItem: 'Iowa'),
        SingleItemCategoryModel(nameSingleItem: 'Kansas'),
        SingleItemCategoryModel(nameSingleItem: 'Kentucky'),
        SingleItemCategoryModel(nameSingleItem: 'Louisiana'),
        SingleItemCategoryModel(nameSingleItem: 'Minnesota'),
        SingleItemCategoryModel(nameSingleItem: 'Mississippi'),
        SingleItemCategoryModel(nameSingleItem: 'Missouri'),
        SingleItemCategoryModel(nameSingleItem: 'Oklahoma'),
        SingleItemCategoryModel(nameSingleItem: 'South Dakota'),
        SingleItemCategoryModel(nameSingleItem: 'Texas'),
        SingleItemCategoryModel(nameSingleItem: 'Tennessee'),
      ],
    ),
  ];

  static const List<SingleCategoryModel> exampleData4 = [
    SingleCategoryModel(
      singleItemCategoryList: [
        SingleItemCategoryModel(nameSingleItem: 'Alabama'),
        SingleItemCategoryModel(nameSingleItem: 'Arkansas'),
        SingleItemCategoryModel(nameSingleItem: 'Illonois'),
        SingleItemCategoryModel(nameSingleItem: 'Iowa'),
        SingleItemCategoryModel(nameSingleItem: 'Kansas'),
        SingleItemCategoryModel(nameSingleItem: 'Kentucky'),
        SingleItemCategoryModel(nameSingleItem: 'Louisiana'),
        SingleItemCategoryModel(nameSingleItem: 'Minnesota'),
        SingleItemCategoryModel(nameSingleItem: 'Mississippi'),
        SingleItemCategoryModel(nameSingleItem: 'Missouri'),
        SingleItemCategoryModel(nameSingleItem: 'Oklahoma'),
        SingleItemCategoryModel(nameSingleItem: 'South Dakota'),
        SingleItemCategoryModel(nameSingleItem: 'Texas'),
        SingleItemCategoryModel(nameSingleItem: 'Tennessee'),
      ],
    ),
  ];
}
