import 'package:flutter/material.dart';
import '../model/place.dart';
import 'package:provider/provider.dart';

class PicsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final placeData=Provider.of<Place>(context,listen: false).pics;

    return ListView.builder(scrollDirection: Axis.horizontal ,
        itemCount: placeData.length,
        itemBuilder: (ctx,i){
      return Row(
        children: <Widget>[
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10  ,vertical: 5),
              child: ClipRRect(borderRadius: BorderRadius.circular(15),
                child: Image.network(placeData[i],
                  fit: BoxFit.cover,width: 100,height: 160,),
              )
          ),
        ],
      );
        }
        );
  }
}
