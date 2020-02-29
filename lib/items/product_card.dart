import 'package:flutter/material.dart';
import '../screens/place_detail_screen.dart';
import '../model/place.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final placeData=Provider.of<Place>(context,listen: false);
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(PlaceDetailScreen.routeName,arguments: placeData.id);
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(

              children: <Widget>[
                //TODO product image
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Hero(
                    tag: placeData.id,
                    child: ClipRRect(
                      child: Image.asset(
                        placeData.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                    ),
                  ),
                ),

                Row(
                  children: <Widget>[
                    //TODO : type
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        placeData.type,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      margin:
                      EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Pet Friendly',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),

            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(right: 20)),
                //TODO : price
                Text(
                  '\$${placeData.price}',
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
                //TODO : type
                Text(
                  'Studio Apartment',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            //TODO : adress
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(right: 20)),
                Text(
                  placeData.address,
                  style: TextStyle(fontSize: 15, color: Colors.grey),overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Divider(),
            Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.error,color: Colors.blue,),
//                      Image.asset('assets/images/bed.png',fit: BoxFit.cover,),
                    Padding(padding: EdgeInsets.only(right:10)),
                    Text('${placeData.bedNum}',style: TextStyle(color: Colors.grey),),
                    Padding(padding: EdgeInsets.only(right:30)),

                  ],
                ),Row(
                  children: <Widget>[
                    Icon(Icons.error,color: Colors.blue,),
                    Padding(padding: EdgeInsets.only(right:10)),
                    Text('${placeData.bathNum}',style: TextStyle(color: Colors.grey),),
                    Padding(padding: EdgeInsets.only(right:30)),
                  ],
                ),Row(
                  children: <Widget>[
                    Icon(Icons.directions_car,color: Colors.blue,),
                    Padding(padding: EdgeInsets.only(right:10)),
                    Text('${placeData.parkingNum}',style: TextStyle(color: Colors.grey),),
                    Padding(padding: EdgeInsets.only(right:30)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
