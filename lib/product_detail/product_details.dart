import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffe1e0de),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(12.0),
            child: Column(

              children: <Widget>[
                Container(
                    width: double.infinity,
                    height: 320.0,
                    child:
                        Image.asset('assets/images/ic_bag_product_detail.jpg')),
                Card(
                    elevation: 3,
                    margin: EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 5.0),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            10.0, 10.0, 0.0, 5.0),
                                        child: Text("Bag",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 10.0, 10.0, 0.0),
                                      child: Image.asset(
                                          'assets/images/ic_cart.png',
                                          width: 21.0,
                                          height: 21.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              10.0, 10.0, 0.0, 5.0),
                                          child: Text("Rating ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              5.0, 10.0, 0.0, 5.0),
                                          child: Text("4.5",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          5.0, 10.0, 8.0, 5.0),
                                      child: Text("\$700",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    )),
                Card(
                    elevation: 3,
                    margin: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 5.0),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: Center(

                        child: SingleChildScrollView(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            10.0, 10.0, 0.0, 5.0),
                                        child: Text("Product Details",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              10.0, 10.0, 0.0, 5.0),
                                          child: Text("Product Name: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              10.0, 10.0, 0.0, 5.0),
                                          child: Text("Ladies Bag",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14.0,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(

                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              10.0, 5.0, 0.0, 10.0),

                                          child: Text("Product Description: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Container(
                                          width: 150,
                                          margin: EdgeInsets.fromLTRB(
                                              10.0, 5.0, 0.0, 10.0),
                                          child: Text(
                                              "Fabricated in adherence with the quality values and principles laid down by the industry.",

                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14.0,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
