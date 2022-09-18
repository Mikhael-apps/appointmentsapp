import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/itemdata.dart';
import '../widgets/appbar_home_screen.dart';
import '../widgets/container_page_view.dart';
import '../widgets/menu_soeciality.dart';
import '../widgets/search_home_screen.dart';
import '../widgets/speciality_icon_text.dart';



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
          const ContainerPageView(),
          const SizedBox(height: 10),
          const menuSpeciality(),
          const SizedBox(
            height: 10,
          ),
          specialityIconAndText(),
              SizedBox(height: 10,),
              menuSpeciality(),
        ],
      ),
    );
  }
}




 // child: ListView.builder(
            //   itemCount: _listCategory.length,
            //   itemBuilder: (context, index) {
            //     return Column(
            //       children: <Widget>[
            //         Icon(_listCategory[index].iconData),
            //         Text(_listCategory[index].title),
                    
            //       ],
            //     );
            // })


