import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home_fragment.dart';
import 'package:eccomerceflutter/product_detail/product_details.dart';

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          elevation: 3,
          margin: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
          color: Colors.white,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetail()),
              );
            },
            child: Center(
              child: SingleChildScrollView(
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5.0, 6.0, 0.0, 5.0),
                          child: Text(choice.title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                        child: Image.asset('assets/images/heart.png',
                            width: 17.0, height: 17.0),
                      ),
                    ],
                  ),

//            Icon(choice.icon, size: 130.0),
                  Image.asset(choice.icon, width: 100.0, height: 100.00),
                  Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 6.0, 12.0, 2.0),
                      child: Text(choice.price,
                          style: TextStyle(
                              color: Colors.black38,
                              decoration: TextDecoration.lineThrough)),
                    ),
                    Text(choice.discountPrice,
                        style: TextStyle(color: Colors.black)),
                  ])
                ]),
              ),
            ),
          )),
    );
  }
}
