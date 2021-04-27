import 'package:flutter/material.dart';
import 'package:netflix_project/bottomnavpages/DownloadPage.dart';
import 'package:netflix_project/bottomnavpages/HomePage.dart';
import 'package:netflix_project/bottomnavpages/PlayPage.dart';
import 'package:netflix_project/bottomnavpages/SearchPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            backgroundColor: Colors.black,
            primaryColor: Color(0xffDB0000),
            primaryColorLight: Color(0xffCCCCCC),
            primaryColorDark: Color(0xff564D4D)),
        home: MainMenu());
  }
}

class MainMenu extends StatefulWidget {
  MainMenu({Key key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _selectedWidgetID = 0;
  List<Widget> _bottomWidgets = [
    HomePage(),
    PlayPage(),
    SearchPage(),
    DownloadPage()
  ];

  void onBottomSelectedFunc(int id) {
    setState(() {
      _selectedWidgetID = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomWidgets[_selectedWidgetID],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).backgroundColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColorLight,
        unselectedItemColor: Theme.of(context).primaryColorDark,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: _selectedWidgetID,
        onTap: (id) => onBottomSelectedFunc(id),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download), label: "Download"),
        ],
      ),
    );
  }
}
