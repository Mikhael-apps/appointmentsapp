import 'package:flutter/material.dart';

import '../widgets/appbar_home_screen.dart';


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
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none, color: Colors.black,),),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border, color: Colors.black,),),

        ],
      ),
    );
  }
}


