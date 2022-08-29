import 'package:flutter/material.dart';

class Dishboard extends StatefulWidget {
  // Dishboard({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Dishboard> {
  void _onItemTapped(int index) {
    setState(() {
      // _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        toolbarHeight: 60.0,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              hintText: 'Search Fruit',
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),

      backgroundColor: Colors.yellowAccent[800],

      // appbar end

      body: SingleChildScrollView(
        child: Container(
          // color: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
