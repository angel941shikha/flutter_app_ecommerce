import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//my own
import 'package:flutter_app_ecommerce/components/horizontal_listviews.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel=new Container(
    height: 200,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images:[
        AssetImage('assets/img1.jpg'),
        AssetImage('assets/img2.jpg'),
        AssetImage('assets/img3.jpg'),
        AssetImage('assets/img4.jpg'),
        AssetImage('assets/img5.jpg'),
        AssetImage('assets/img6.jpg'),
      ],
      autoplay: false,
    animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(
        milliseconds: 1000
      ),
      dotSize: 4.0,
      dotColor: Colors.red,
      //dotBgColor: Colors.blue,
      indicatorBgPadding: 6.0,
    ),
  );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('E-commerceApp'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          )
        ],
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          // header
          new UserAccountsDrawerHeader(
            accountName: Text('shikha pal'),
            accountEmail: Text('shikhapal941@gmail.com'),
          currentAccountPicture: GestureDetector(
            child:new CircleAvatar(
              backgroundColor: Colors.lightGreen,
              child:Icon(Icons.person,color:Colors.white),
            )
          ),
            decoration: new BoxDecoration(
              color:Colors.red,
            )
          ),
          //body
          InkWell(
            onTap:(){} ,
            child: ListTile(
              title:Text('Home page'),
              leading:Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap:(){} ,
            child: ListTile(
              title:Text('My account'),
              leading:Icon(Icons.person),
            ),
          ),
          InkWell(
            onTap:(){} ,
            child: ListTile(
              title:Text('My orders'),
              leading:Icon(Icons.shopping_basket),
            ),
          ),
          InkWell(
            onTap:(){} ,
            child: ListTile(
              title:Text('Categories'),
              leading:Icon(Icons.dashboard),
            ),
          ),
          InkWell(
            onTap:(){} ,
            child: ListTile(
              title:Text('Favourites'),
              leading:Icon(Icons.favorite),
            ),
          ),
Divider(),
          InkWell(
            onTap:(){} ,
            child: ListTile(
              title:Text('Settings'),
              leading:Icon(Icons.settings),
            ),
          ),
          InkWell(
            onTap:(){} ,
            child: ListTile(
              title:Text('About'),
              leading:Icon(Icons.help),
            ),
          ),

        ]),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begin
          image_carousel,
          //padding
          new Padding(padding: const EdgeInsets.all(2.0),
           child: new Text('Categories'),
          ),
          //horizontal list
HorizontalList(),
        ],
      ),
    );
  }
}
