import 'package:eccomerceflutter/pages/home_fragment.dart';
import 'package:eccomerceflutter/pages/favorite_fragment.dart';
import 'package:eccomerceflutter/pages/all_category_fragment.dart';
import 'package:eccomerceflutter/pages/about_fragment.dart';
import 'package:eccomerceflutter/pages/rate_and_share_fragment.dart';

import 'package:flutter/material.dart';

//Let's create a reusable method that can render GridView as long as it passed a
//a BuildContext as well as list of strings
Widget createGridView(BuildContext context, List<String> cosmicBodies) {
  //I will shuffle my data
  cosmicBodies.shuffle();

  // Then build my GridView and return it
  return new GridView.builder(
      itemCount: cosmicBodies.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return new GestureDetector(
          child: new Card(
            elevation: 5.0,
            child: new Container(
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
              child: new Text(cosmicBodies[index]),
            ),
          ),
        );
      });
}

class HomeItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeFragment();
  }
}

//Create Moons Fragment. This will contains a gridview with our moons
class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FavouriteFragment();
  }
}

//Create Stars Fragment. This will contains a gridview with our stars
class AllCatrogory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AllCategoryFragment();
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AboutFragment();
  }
}


class RateAndShare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RateAndShareFragment();
  }
}
