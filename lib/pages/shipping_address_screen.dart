import 'package:flutter/material.dart';

class ShippingAddressScreen extends StatefulWidget {
  @override
  _ShippingAddressScreenState createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  static const appbarColor = const Color(0xff87b5e9);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: appbarColor,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: new Text(
              'Shipping Address',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Expanded(

                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(7.0, 10.0, 7.0, 5.0),
                      width: width * 0.9,
                      child: Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(7.0, 10.0, 7.0, 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Shipping Address',
                                style: TextStyle(
                                    color: Color(0xff536da6), fontSize: 15),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                                child: TextField(
                                  showCursor: true,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black38),
                                  decoration: InputDecoration(
                                    counter: SizedBox.shrink(),
                                    hintText: 'Enter address',
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.9,
                      margin: EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 0.0),
                      child: Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(7.0, 12.0, 7.0, 9.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'Payment method',
                                style: TextStyle(color: Color(0xff536da6),fontSize: 15),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 0.0),
                                child: const Text(
                                  '- Cash',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                child: Container(

                  child: Card(
                    elevation: 3,
                    margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 6.0),
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
                                onPressed: () {},
                                child: const Text('Continue',
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                '\$450',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 19),
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
          )),
    );
  }
}
