import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:uhdmovies/ui/home.dart';
import 'package:uhdmovies/ui/search.dart';

class SlideShow extends StatefulWidget {
  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  int _current = 0;
  final List<String> _listViewData = [
    "A List View with many Text - Here's one!",
    "A List View with many Text - Here's another!",
    "A List View with many Text - Here's more!",
    "A List View with many Text - Here's more!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0, 
        title: Text("Popular movies",
                  style: TextStyle(
                    fontFamily: 'Arvo',
                    fontSize: 34,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search),
              onPressed: search,
              )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20),),
          CarouselSlider(
            height: 250.0,
            autoPlay: true,
            aspectRatio: 2.0,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            items: _listViewData.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    onTap: (){
                      selectMovie(i);
                    },
                     child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        // shape: BoxShape.circle,
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: Image.network('https://yourdubaiguide.com/wp-content/uploads/2019/03/Spider-Man-Far-From-Home-movie-release-date-showtimes-Dubai.jpg',
                              fit: BoxFit.cover,),         
                      ),
                  );
                },
              );
            }).toList(),
          ),
           Padding(
             padding: const EdgeInsets.only(top:10.0),
             child:Text("New movies",
                style: TextStyle(
                  fontFamily: 'Arvo',
                  fontSize: 24,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
           ),
          Padding(padding: EdgeInsets.only(top: 20),),
          Container(
            height: 270,
            child: GridView.count(
              // crossAxisSpacing: 10.0,
              // shrinkWrap: true,
              crossAxisCount: 2,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(4, (index) {      //should return widget list
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    // height: 250,
                    child: Center(
                      child: Image.network('https://yourdubaiguide.com/wp-content/uploads/2019/03/Spider-Man-Far-From-Home-movie-release-date-showtimes-Dubai.jpg',
                              fit: BoxFit.cover,
                              // height: 250,
                              // width: 250,
                              ),
                    ),       
                  ),
                );
              }),
            )
          )

        ],
        
      ),
    
    );
  }
  void selectMovie(String movieId){
    var router = new MaterialPageRoute(
        builder: (BuildContext context){
          return new Home();
        });
    Navigator.of(context).push(router);
  }
  void search(){
    var router = new MaterialPageRoute(
        builder: (BuildContext context){
          return new SearchResult();
        });
    Navigator.of(context).push(router);
  }
}