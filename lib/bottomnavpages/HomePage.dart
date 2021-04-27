import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Expanded(
            flex: 10,
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/movie_background.png'),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 40.0, left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 7.0, top: 2.0),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/netflix_logo.png')),
                                  )),
                              Row(
                                children: [
                                  IconButton(
                                      iconSize: 30.0,
                                      icon: Icon(Icons.cast),
                                      color: Colors.white,
                                      onPressed: () => {}),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    color: Colors.blue,
                                    alignment: Alignment.center,
                                    child: IconButton(
                                        icon: Icon(Icons.person),
                                        color: Colors.white,
                                        onPressed: () => {}),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("TV Shows",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black,
                                            blurRadius: 5.0)
                                      ],
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Movies",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black,
                                            blurRadius: 5.0)
                                      ],
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Categories",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black,
                                            blurRadius: 5.0)
                                      ],
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.add, size: 30.0, color: Colors.white),
                            Text(
                              "My List",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        FlatButton.icon(
                            onPressed: () => {},
                            color: Colors.white,
                            icon: Icon(Icons.play_arrow),
                            label: Text(
                              "Play",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.info, size: 30.0, color: Colors.white),
                            Text(
                              "Info",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ))),
        Expanded(
            flex: 5,
            child: Container(
                padding: EdgeInsets.only(top: 20.0),
                width: double.infinity,
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Keep Watching",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                  width: 120.0,
                                  height: 140.0,
                                  image: AssetImage('assets/movie_image_1.png'),
                                  fit: BoxFit.fill),
                              Text("Breaking Bad",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                  width: 120.0,
                                  height: 140.0,
                                  image: AssetImage('assets/movie_image_2.png'),
                                  fit: BoxFit.fill),
                              Text("Game of Thrones",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                  width: 120.0,
                                  height: 140.0,
                                  image: AssetImage('assets/movie_image_3.png'),
                                  fit: BoxFit.fill),
                              Text("Peaky Blinders",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ))),
      ]),
    );
  }
}
