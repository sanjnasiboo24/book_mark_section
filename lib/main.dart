import 'package:bookmarksection/book_mark.dart';
import 'package:bookmarksection/register.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bookMark(),
  ));
}

class bookMark extends StatefulWidget {
  @override
  _bookMarkState createState() => _bookMarkState();
}

class _bookMarkState extends State<bookMark> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: 2, vsync: this);//length is the number of tabs
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('BookMark Section',style: TextStyle(fontSize: 18),),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
         SizedBox(
           height: 5,
         ),
          Center(
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.red,
              isScrollable: true,
              labelPadding:EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: <Widget>[
                Tab(child: Text('Book Mark',style: TextStyle(fontSize: 18),)),
                Tab(child: Text('Register',style: TextStyle(fontSize: 18),),
                )],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height-50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Mark(),
               Register(),
              ],
            ),
          )
        ],
      ),
    );

  }
}

