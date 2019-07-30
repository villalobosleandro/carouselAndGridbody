import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel/gridView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text('my app'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 3,
            child: ImageCarousel(),
          ),

          Flexible(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5),
              child: BodyPage(),
            ),
           
          ),
         
        ],
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  final carousel = Carousel(
            boxFit: BoxFit.cover,
            images: [
              AssetImage('lib/assets/images/img1.jpg'),
              AssetImage('lib/assets/images/img2.jpg'),
              AssetImage('lib/assets/images/img3.jpg'),
              // AssetImage('lib/assets/images/product1.jpg')
            ],
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 2000),
          );

  final banner = Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Container(
        child: Text('The best', style: TextStyle(
          fontFamily: 'IndieFlower',
        fontSize: 18.0,

        ),),
        decoration: BoxDecoration(
          color: Colors.amber.withOpacity(0.8),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0)
          )
        ),
        padding: EdgeInsets.all(10.0),
      )
    );
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              children: <Widget>[
                carousel,
                banner
              ],
            )
          ),
      );
    
  }
}


