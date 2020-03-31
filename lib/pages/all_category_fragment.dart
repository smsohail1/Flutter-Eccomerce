import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class CateogryModel {
  const CateogryModel({this.icon, this.cateogryName});

  final String cateogryName;
  final String icon;
}

Widget _myListView(BuildContext context) {
  final titles = [
    'Women Dress',
    'Men Watch',
    'Men Shirt',
    'Accessories',
    'Kids Dress',
    'Men Shoes',
    'Ladies Bag'
  ];

  final icons = [
    "assets/images/ic_women_dress.jpg",
    "assets/images/ic_watch.jpg",
    "assets/images/ic_shirt.jpg",
    "assets/images/accesories.jpg",
    "assets/images/ic_kids_dress.jpg",
    "assets/images/ic_shoes.jpg",
    "assets/images/ic_bag.Jpeg",
  ];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          onTap: () {},
          leading: Image.asset(
            icons[index],
            width: 80.0,
            height: 40.0,
          ),
          title: Text(
            titles[index],
            style: TextStyle(fontSize: 14.0),
          ),
        ),
      );
    },
  );
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

class AllCategoryFragment extends StatefulWidget {
  @override
  _AllCategoryFragmentState createState() => _AllCategoryFragmentState();
}

class _AllCategoryFragmentState extends State<AllCategoryFragment> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: BodyLayout(),
    );
  }
}
