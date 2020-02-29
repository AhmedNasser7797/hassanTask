import 'package:flutter/material.dart';

import '../items/product_card.dart';
import '../provider/data.dart';

import 'package:provider/provider.dart';


class PlacesOverview extends StatelessWidget {
  static const routeName='/places-overview';

  @override
  Widget build(BuildContext context) {
    final placeData=Provider.of<Data>(context).items;
    return Scaffold(
      body: Container(
//        height: MediaQuery.of(context).size.height*0.9,
//        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //TODO : user Image
                Text(
                  'Discover',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/test.jpg'),
                ),
              ],
            ),
//            Padding(padding: EdgeInsets.all(10)),
            Expanded(
              child: ListView.builder(itemCount:placeData.length ,
                  itemBuilder: (ctx,i){
                return ChangeNotifierProvider.value(
                    value: placeData[i],
                    child: ProductCard()
                );
              }
              ),
            )
          ],

        ),
      ),
    );
  }
}
