import 'package:flutter/material.dart';

class Mark extends StatefulWidget {
  @override
  _MarkState createState() => _MarkState();
}

class _MarkState extends State<Mark> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text('BOOK MARK SECTION',style: TextStyle(fontSize: 15),),
      ),
    );
  }
}
