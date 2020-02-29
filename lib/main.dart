import 'package:flutter/material.dart';
import 'package:hassanTask/screens/place_detail_screen.dart';
import './provider/data.dart';
import './screens/places_overview.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Data(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
           backgroundColor: Colors.white,
          primarySwatch: Colors.blue,
        ),
        home: PlacesOverview(),
        routes: {
          PlacesOverview.routeName:(ctx)=>PlacesOverview(),
          PlaceDetailScreen.routeName:(ctx)=>PlaceDetailScreen()
        },
      ),
    );
  }
}

