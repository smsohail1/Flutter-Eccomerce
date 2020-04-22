import 'package:flutter/material.dart';
import 'package:eccomerceflutter/pages/shipping_address_screen.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class CartModel {
  final String productName;
  final String image;
  final String price;
  final String qty;

  CartModel(this.productName, this.image, this.price, this.qty);
}

class _CartState extends State<Cart> {
  List<CartModel> sampleData = new List<CartModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new CartModel(
        'Men stylish shoes', "images/ic_shoes.png", '\$400', '1'));

    sampleData.add(new CartModel('Watch', "images/ic_watch.png", '\$300', '1'));

    sampleData.add(new CartModel(
        'Women dress', "images/ic_women_dress.png", '\$500', '1'));

    sampleData.add(new CartModel(
        'Women Bag', "images/ic_bag_product_detail.jpg", '\$200', '1'));

    sampleData.add(new CartModel(
        'Women Bag', "images/ic_bag_product_detail.jpg", '\$200', '1'));

    sampleData.add(new CartModel(
        'Women Bag', "images/ic_bag_product_detail.jpg", '\$200', '1'));

    sampleData.add(new CartModel(
        'Women Bag', "images/ic_bag_product_detail.jpg", '\$200', '1'));

    sampleData.add(new CartModel(
        'Women Bag', "images/ic_bag_product_detail.jpg", '\$200', '1'));

    sampleData.add(new CartModel(
        'Women Bag', "images/ic_bag_product_detail.jpg", '\$200', '1'));

    sampleData.add(new CartModel(
        'Women Bag', "images/ic_bag_product_detail.jpg", '\$200', '1'));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(
              height: height - 80,
              child: new ListView.builder(
                itemCount: sampleData.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return new InkWell(
                    onTap: () {},
                    child: new BusinessItem(sampleData[index]),
                  );
                },
              ),
            ),

            //Button
            SizedBox(
              height: 80,
              child: Container(
                child: Card(
                  elevation: 3,
                  margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                  color: Colors.white,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 75.0,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(2.0, 0.0, 10.0, 0.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: RaisedButton(
                              padding: EdgeInsets.all(13.0),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ShippingAddressScreen()),
                                );
                              },
                              child: const Text('Checkout',
                                  style: TextStyle(fontSize: 14)),
                              color: Colors.blue,
                              textColor: Colors.white,
                              elevation: 5,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(12.0, 15.0, 5.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Total',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Text(
                              '\$450',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 19),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BusinessItem extends StatelessWidget {
  final CartModel _item;

  BusinessItem(this._item);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 105,
      child: Card(
        elevation: 3,
        margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Container(
                child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 10.0),
                  child: Image.asset(
                    'assets/images/ic_watch.jpg',
                    width: 60,
                    height: 60,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          child: Text(
                            'Men',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
//                        Image.asset(
//                          'assets/images/ic_close.png',
//                          width: 13,
//                          height: 15,
//                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '\$700',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),

            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 10.0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/ic_minus.png',
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),

                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                    Image.asset(
                      'assets/images/ic_plus.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(
                    left: 0.0, top: 10.0, right: 10.0, bottom: 0.0),
                child: Image.asset(
                  'assets/images/ic_close.png',
                  width: 12,
                  height: 14,
                ),
              ),
            ),
//            Align(
//              alignment: Alignment.bottomRight,
//              child: Container(
//                child: Row(
//                  children: <Widget>[
//                    Image.asset(
//                      'assets/images/ic_minus.png',
//                      width: 20,
//                      height: 20,
//                    ),
//                    Text(
//                      '1',
//                      style: TextStyle(color: Colors.black, fontSize: 14),
//                    ),
//                    Image.asset(
//                      'assets/images/ic_plus.png',
//                      width: 20,
//                      height: 20,
//                    ),
//                  ],
//                ),
//              ),
//            )
          ],
        ),
      ),
    );
  }
}
