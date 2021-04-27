import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DownloadPage extends StatefulWidget {
  DownloadPage({Key key}) : super(key: key);

  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Download Page",
          style: TextStyle(color: Theme.of(context).primaryColorLight),
        ),
      ),
    );
  }
}
