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
          const SearchHomeScreen(),
          Container(
              decoration: BoxDecoration(
                // image: DecorationImage(image: AssetImage('images/bg.jpg'), fit: BoxFit.cover),
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(25),
              ),
              width: MediaQuery.of(context).size.width * 0.91,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 25,
                    top: 30,
                    child: Text(
                      'Medical Checks!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 75,
                    child: Text(
                      'Check your health condition regulary \n to minimize the incidence to disease in \n the future',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 135,
                    child: Container(
                    child: Center(child: Text('Check Now')),
                    width: 100,
                    height: 35,
                    decoration: BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(35)),
                    
                  ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
