import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:uhdmovies/ui/home.dart';
import 'package:uhdmovies/ui/search.dart';

class SlideShow extends StatefulWidget {
  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  int _current = 0;
  List<Widget> movies = new List();
  final List<String> _listViewData = [
    "https://yourdubaiguide.com/wp-content/uploads/2019/03/Spider-Man-Far-From-Home-movie-release-date-showtimes-Dubai.jpg",
    "https://ksassets.timeincuk.net/wp/uploads/sites/55/2018/05/Deadpool-920x584.jpg",
    "https://www.openaircinemas.com.au/wp-content/uploads/2019/06/268x0w.png",
    "https://is3-ssl.mzstatic.com/image/thumb/Video113/v4/6e/47/f6/6e47f680-ac54-21ff-a37a-3aab1a9970b0/DIS_AV_ENDGAME_FINAL_ENGLISH_US_WW_WW_ARTWORK_EN_2000x3000_1OWPBJ00000GQ6.lsr/268x0w.jpg",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // setState(() {
      addMovie();
      addMovie();
      addMovie();  
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("All"),
              onTap: (){},
            ),
            ListTile(
              title: Text("New movies"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Action movies"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Triller movies"),
              onTap: (){},
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0, 
        title: Text("New movies",
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
                      child: Image.network(i,
                              fit: BoxFit.cover,),         
                      ),
                  );
                },
              );
            }).toList(),
          ),
           Padding(
             padding: const EdgeInsets.only(top:10.0),
             child:Text("Popular movies",
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
              crossAxisCount: 2,
              children:movies != null? movies : [
                testMovie(),
                testMovie(),
              ] 
            )
          )
        ],
        
      ),
    
    );
  }

  void addMovie(){
    movies.add(InkWell(
      child: Container(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network('https://ksassets.timeincuk.net/wp/uploads/sites/55/2018/05/Deadpool-920x584.jpg',
            fit: BoxFit.fill,
            ),
        ),
        ),
        onTap: (){
          selectMovie('https://ksassets.timeincuk.net/wp/uploads/sites/55/2018/05/Deadpool-920x584.jpg');
        },
      )
    );
  }
  Widget testMovie(){
    return Container(
      child:Image.network('https://ksassets.timeincuk.net/wp/uploads/sites/55/2018/05/Deadpool-920x584.jpg',
        fit: BoxFit.fill,
        ),
      );
  }
  void selectMovie(String movieLink){
    var router = new MaterialPageRoute(
        builder: (BuildContext context){
          return new Home(image_link: movieLink,);
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