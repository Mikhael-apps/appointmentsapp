import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_home_screen.dart';
import '../widgets/search_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarHomeScreen(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SearchHomeScreen(),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(25),
            ),
            width: 365,
            height: 210,
            child: Column(
              children: const <Widget>[
                Text('Medikal Ckecks', style: TextStyle(
                    color: Colors.white, 
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
