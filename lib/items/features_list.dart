import 'package:flutter/material.dart';
import '../model/place.dart';

import 'package:provider/provider.dart';

class FeaturesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final placeData = Provider.of<Place>(context, listen: false);

    return ListView.builder(
        itemCount: placeData.features.length,
        itemBuilder: (ctx, i) {
          return Padding(
            padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  placeData.features[i],
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '${placeData.distance[i]} KM',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          );
        });
  }
}
