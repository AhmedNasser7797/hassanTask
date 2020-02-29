

import 'package:flutter/cupertino.dart';

class Place with ChangeNotifier{
 final String id;
 final String imageUrl;
 final String type;
 final double price;
 final String address;
 final int bedNum;
 final int bathNum;
 final int parkingNum;
 final String description;
 final List features;
 final List pics;
 final List distance;

  Place({
    this.id,
    this.address,
    this.imageUrl,
    this.price,
    this.description,
    this.bathNum,
    this.bedNum,
    this.features,
    this.parkingNum,
    this.type,
    this.pics,
    this.distance
  });
}