import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';




class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
          children: <Widget>[
            Image.network('https://yourdubaiguide.com/wp-content/uploads/2019/03/Spider-Man-Far-From-Home-movie-release-date-showtimes-Dubai.jpg',
            fit: BoxFit.cover,),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: new Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
           new SingleChildScrollView(
            child: new Container(
              margin: const EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.center,
                    child: new Container(width: 400.0,height: 400.0,),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      image: new DecorationImage(image: new NetworkImage('https://yourdubaiguide.com/wp-content/uploads/2019/03/Spider-Man-Far-From-Home-movie-release-date-showtimes-Dubai.jpg'),
                      fit: BoxFit.cover),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 20.0,
                          offset: new Offset(0.0, 10.0)
                        )
                      ]
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 0.0),
                    child: new Row(

                      children: <Widget>[
                        new Expanded(child: new Text("Far from home",style: new TextStyle(color: Colors.white,fontSize: 30.0,fontFamily: 'Arvo',fontWeight: FontWeight.bold),)),
                        new Text('7.8/10',style: new TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: 'Arvo'),)
                      ],
                    ),
                  ),
                  new Text("Spider man far from home far from home far from home far from home",style: new TextStyle(color: Colors.white,fontFamily: 'Arvo')),
                  new Padding(padding: const EdgeInsets.all(10.0)),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                            child: new Container(
                              width: 150.0,
                              height: 60.0,
                              alignment: Alignment.center,
                              child: new Text('Download',style: new TextStyle(color: Colors.white,fontFamily: 'Arvo',fontSize: 20.0),),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(10.0),
                                color:  Colors.deepPurpleAccent
                              ),
                            )
                      ),
                      new Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: new Container(
                              padding: const EdgeInsets.all(16.0),
                              alignment: Alignment.center,
                              child: new Icon(Icons.share,color: Colors.white,),
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  color: Colors.deepPurpleAccent
                              ),
                            ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Container(
                              padding: const EdgeInsets.all(16.0),
                              alignment: Alignment.center,
                              child: new Icon(Icons.bookmark,color: Colors.white,),
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  color: Colors.deepPurpleAccent
                              ),
                            )

                      ),

                    ],
                  )
                ],
              ),
            ),
          )
          ],
        ),
    );
  }
}