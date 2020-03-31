import 'package:flutter/material.dart';
import 'package:eccomerceflutter/pages/home_grid.dart';
import 'home_fragment.dart';

//Let's create a reusable method that can render GridView as long as it passed a
//a BuildContext as well as list of strings
Widget createGridView(BuildContext context, List<Choice> choices) {
  //I will shuffle my data
  // cosmicBodies.shuffle();

  // Then build my GridView and return it
  return new GridView.count(
      crossAxisCount: 2,
      children: List.generate(choices.length, (index) {
        return Center(
          child: ChoiceCard(choice: choices[index]),
        );
      }));
}

//class Choice {
//  const Choice({this.title, this.icon, this.price, this.discountPrice});
//
//  final String title;
//  final String icon;
//  final String price;
//  final String discountPrice;
//}

class FavouriteFragment extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const List<Choice> choices = const <Choice>[
      const Choice(
          title: 'Bag',
          icon: 'assets/images/ic_bag.Jpeg',
          price: '\$250',
          discountPrice: '\$180'),
      const Choice(
          title: 'Shoes',
          icon: 'assets/images/ic_shoes.jpg',
          price: '\$200',
          discountPrice: '\$150'),
      const Choice(
          title: 'Bag',
          icon: 'assets/images/ic_bag.Jpeg',
          price: '\$250',
          discountPrice: '\$180'),
      const Choice(
          title: 'Shoes',
          icon: 'assets/images/ic_shoes.jpg',
          price: '\$200',
          discountPrice: '\$150'),
      const Choice(
          title: 'Bag',
          icon: 'assets/images/ic_bag.Jpeg',
          price: '\$250',
          discountPrice: '\$180'),
      const Choice(
          title: 'Shoes',
          icon: 'assets/images/ic_shoes.jpg',
          price: '\$200',
          discountPrice: '\$150'),
      const Choice(
          title: 'Bag',
          icon: 'assets/images/ic_bag.Jpeg',
          price: '\$250',
          discountPrice: '\$180'),
      const Choice(
          title: 'Shoes',
          icon: 'assets/images/ic_shoes.jpg',
          price: '\$200',
          discountPrice: '\$150'),
      const Choice(
          title: 'Bag',
          icon: 'assets/images/ic_bag.Jpeg',
          price: '\$250',
          discountPrice: '\$180'),
      const Choice(
          title: 'Shoes',
          icon: 'assets/images/ic_shoes.jpg',
          price: '\$200',
          discountPrice: '\$150'),
      const Choice(
          title: 'Bag',
          icon: 'assets/images/ic_bag.Jpeg',
          price: '\$250',
          discountPrice: '\$180'),
      const Choice(
          title: 'Shoes',
          icon: 'assets/images/ic_shoes.jpg',
          price: '\$200',
          discountPrice: '\$150'),
      const Choice(
          title: 'Bag',
          icon: 'assets/images/ic_bag.Jpeg',
          price: '\$250',
          discountPrice: '\$180'),
      const Choice(
          title: 'Shoes',
          icon: 'assets/images/ic_shoes.jpg',
          price: '\$200',
          discountPrice: '\$150'),
      const Choice(
          title: 'Bag',
          icon: 'assets/images/ic_bag.Jpeg',
          price: '\$250',
          discountPrice: '\$180'),
      const Choice(
          title: 'Shoes',
          icon: 'assets/images/ic_shoes.jpg',
          price: '\$200',
          discountPrice: '\$150'),
    ];

    return createGridView(context, choices);
  }
}
