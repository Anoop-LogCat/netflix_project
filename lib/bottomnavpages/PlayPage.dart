import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlayPage extends StatefulWidget {
  PlayPage({Key key}) : super(key: key);

  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Play Page",
          style: TextStyle(color: Theme.of(context).primaryColorLight),
        ),
      ),
    );
  }
}
