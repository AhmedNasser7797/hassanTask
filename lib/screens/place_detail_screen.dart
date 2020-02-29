import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../items/features_list.dart';
import '../items/picsList.dart';

import 'package:provider/provider.dart';

import '../provider/data.dart';

class PlaceDetailScreen extends StatelessWidget {
  static const routeName = '/place-detail-screen';
  @override
  Widget build(BuildContext context) {
    final placeId = ModalRoute.of(context).settings.arguments as String;
    final place = Provider.of<Data>(context).findPlaceById(placeId);
    print(place.id);

    return Scaffold(
        body: CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 300,
          floating: true,
          snap: false,
          pinned: false,
          bottom: PreferredSize(
              child: Container(
                  padding: EdgeInsets.only(bottom: 30,left: 20,right: 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(right: 20)),
                          //TODO : price
                          Text(
                            '\$${place.price}',
                            style: TextStyle(
                                 fontSize: 20,
                            color: Colors.white),
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          //TODO : type
                          Text(
                            'Studio Apartment',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      ),

                      Padding(padding: EdgeInsets.only(bottom: 10)),
                      //TODO : adress

                      Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(right: 20)),
                          Text(
                            place.address,
                            style: TextStyle(fontSize: 15, color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),

                      Padding(padding: EdgeInsets.only(bottom: 10)),
                      Divider(),
                      Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.error,
                                color: Colors.white,
                              ),
//                      Image.asset('assets/images/bed.png',fit: BoxFit.cover,),
                              Padding(padding: EdgeInsets.only(right: 10)),
                              Text(
                                '${place.bedNum}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Padding(padding: EdgeInsets.only(right: 30)),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.error,
                                color: Colors.white,
                              ),
                              Padding(padding: EdgeInsets.only(right: 10)),
                              Text(
                                '${place.bathNum}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Padding(padding: EdgeInsets.only(right: 30)),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.directions_car,
                                color: Colors.white,
                              ),
                              Padding(padding: EdgeInsets.only(right: 10)),
                              Text(
                                '${place.parkingNum}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Padding(padding: EdgeInsets.only(right: 30)),
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.05,)
                        ],
                      ),
                    ],
                  )
              ),
              preferredSize: null,
          ),
          flexibleSpace: FlexibleSpaceBar(

            background: Hero(
              tag: place.id,
              child: Image.asset(
                place.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        SliverList(
        delegate: SliverChildListDelegate([

          ChangeNotifierProvider.value(
              value:place
              ,child: Container(width: 100,height: 160,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: PicsList()
          ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Features',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
          ChangeNotifierProvider.value(
            value:place
            ,child: Container(
            width: double.infinity,
            height: 150,
            child: FeaturesList(),
          ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Description',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text(place.description,style: TextStyle(
              color: Colors.grey,
            ),
            softWrap:true ,

            overflow: TextOverflow.clip,
//            maxLines: 6,
            ),
          ),

//          Container(
//            padding: EdgeInsets.symmetric(horizontal: 10),
//
//            child: Text(
//              place.description,
//              textAlign: TextAlign.center,
//              softWrap: true,
//              overflow: TextOverflow.visible,
//            ),
//          ),
        ]
    ),
        ),
      ],
    ),



    );
  }
}
