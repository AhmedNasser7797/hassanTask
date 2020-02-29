import 'package:flutter/cupertino.dart';

import '../model/place.dart';


class Data with ChangeNotifier{
List<Place> _items= [
    Place(
      id:'1',
      price: 2500.25,
      imageUrl: 'assets/images/test.jpg',
      description: 'just a testchangeSettings(LocationAccuracy accuracy = LocationAccuracy.HIGH, int interval = 1000, double distanceFilter = 0)Will change the settings of futur requests. accuracywill describe the accuracy of the request (see the LocationAccuracy object). interval will set the desired interval for active location updates, in milliseconds (only affects Android). distanceFilter set the minimum displacement between location updates in meters.',
      address: '18 moaz bn gabal st Elraml Alex',
      bathNum: 2,
      bedNum: 2,
      features: [
        '2 movie Theatre',
        '4 shopping mall',
        '2 top school 1 international',
        '2 Gov university'
      ],
      distance: [
        2,
        1.3,
        5,
        10
      ],
      parkingNum: 3,
      type: 'Studio Apartment',
      pics: [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
        'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
        'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',

      ]
    ),
  ];

  List<Place> get items=>[..._items];
  
  Place findPlaceById(String id){
    return _items.firstWhere((placeItem) => placeItem.id==id);
  }

}