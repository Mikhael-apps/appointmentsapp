import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_home_screen.dart';
import '../widgets/container_page_view.dart';
import '../widgets/menu_soeciality.dart';
import '../widgets/search_home_screen.dart';

final List<ItemData> _listCategory = [
  ItemData(iconData: Icons.density_large_outlined, title: 'General'),
  ItemData(iconData: Icons.density_small, title: 'Dentist'),
  ItemData(iconData: Icons.medical_information, title: 'Ortal'),
  ItemData(iconData: Icons.abc, title: 'Nutritionist'),
  ItemData(iconData: Icons.abc, title: 'Neurologist'),
  ItemData(iconData: Icons.people, title: 'Pediatrician'),
  ItemData(iconData: Icons.people_sharp, title: 'Radiologist'),
  ItemData(iconData: Icons.more, title: 'More'),

];

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
        children:  <Widget>[
          const SearchHomeScreen(),
          const ContainerPageView(),
          const SizedBox(height: 10),
          const menuSpeciality(),
          SizedBox(height: 10,),
           Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(40),
            ),
            child: ListView.builder(
              itemCount: _listCategory.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Icon(_listCategory[index].iconData),
                    Text(_listCategory[index].title),
                  ],
                );
            })
           ),
        ],
      ),
    );
  }
}



class ItemData {
  final IconData iconData;
  final String title;

  ItemData({required this.iconData,  required this.title});
}