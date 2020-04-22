import 'Fragments.dart' as Fragments;
import 'package:flutter/material.dart';
import 'package:eccomerceflutter/cart_page/cart.dart';
import 'package:eccomerceflutter/pages/rate_and_share_fragment.dart';
import 'package:share/share.dart';

//Let's define a DrawerItem data object
class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

// Our Homepage
class HomePage extends StatefulWidget {

  //Let's define our drawer items, strings and images
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Favorite", Icons.favorite),
    new DrawerItem("Category", Icons.category),
    new DrawerItem("Rate & Share", Icons.share),
    new DrawerItem("Setting", Icons.settings),
    new DrawerItem("About Us", Icons.account_box)
  ];

  //Let's Create and Return state for this 'StatefulWidget'
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

// Let's define state for our homepage. A state is just information for a widget.
class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  //Let's use a switch statement to return the Fragment for a selected item
  _getDrawerFragment(int pos) {
    switch (pos) {
      case 0:
        return new Fragments.HomeItems();
      case 1:
        return new Fragments.Favourite();
      case 2:
        return new Fragments.AllCatrogory();
      case 3:
        Share.share('check out my website www.onlineapp.com', subject: 'Look what I made!');
        return;
      case 4:
        //return new Fragments.Galaxies();
      case 5:
        return new Fragments.About();

      default:
        return new Text("Error");
    }
  }

  //Let's update the selectedDrawerItemIndex the close the drawer
  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    //we close the drawer
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {


    List<Widget> drawerOptions = [];
    //Let's create drawer list items. Each will have an icon and text
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }
    //Let's scaffold our homepage
    return new Scaffold(
      appBar: new AppBar(
        // We will dynamically display title of selected page
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),

        actions: <Widget>[

          new Padding(padding: const EdgeInsets.all(10.0),

            child: new Container(
                height: 150.0,
                width: 30.0,
                child: new GestureDetector(
                  onTap: () {
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder:(BuildContext context) =>
//                            new CartItemsScreen()
//                        )
//                    );
                  },

                  child: new Stack(

                    children: <Widget>[
                      new IconButton(icon: new Icon(Icons.shopping_cart,
                        color: Colors.white,),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cart()),
                          );
                        },
                      ),
//                      1 ==0 ? new Container(
//
//                      ) :
//                      new Positioned(
//
//                          child: new Stack(
//                            children: <Widget>[
//                              new Icon(
//                                  Icons.brightness_1,
//                                  size: 20.0, color: Colors.green[800]),
//                              new Positioned(
//                                  top: 3.0,
//                                  right: 4.0,
//                                  child: new Center(
//                                    child: new Text('1',
//
//                                      style: new TextStyle(
//                                          color: Colors.white,
//                                          fontSize: 11.0,
//                                          fontWeight: FontWeight.w500
//                                      ),
//                                    ),
//                                  )),
//
//
//                            ],
//                          )),

                    ],
                  ),
                )
            )

            ,)],

      ),
      // Let's register our Drawer to the Scaffold
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            //Lets Create a material design drawer header with account name, email,avatar
            new UserAccountsDrawerHeader(
              accountName: new Text("Mr.James"),
              accountEmail: new Text("james@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage("assets/images/profile.png"),
              ),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage("assets/images/bg.jpg"),
                      fit: BoxFit.cover)),
            ),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerFragment(_selectedDrawerIndex),
    );
  }
}
