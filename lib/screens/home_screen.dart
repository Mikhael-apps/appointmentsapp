import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/itembutton.dart';
import '../models/itemdata.dart';
import '../widgets/appbar_home_screen.dart';
import '../widgets/container_page_view.dart';
import '../widgets/menu_soeciality.dart';
import '../widgets/search_home_screen.dart';
import '../widgets/speciality_icon_text.dart';


final List<ItemButton> _listButtons = [
  ItemButton(label: 'General'),
  ItemButton(label: 'Dentist'),
  ItemButton(label: 'Ortalist'),
  ItemButton(label: 'Nurtitionist'),
  ItemButton(label: 'Neurologist'),
  ItemButton(label: 'Pediastrician'),
  ItemButton(label: 'Radiologist'),
  ItemButton(label: 'More'),

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
        children: <Widget>[
          const SearchHomeScreen(),
          const ContainerPageView(),
          const SizedBox(height: 10),
          const menuSpeciality(label: 'Doctor Speciality',),
           const SizedBox(
            height: 10,
          ),
         const specialityIconAndText(),
             const SizedBox(height: 10,),
             const menuSpeciality(label: 'Top Doctor',),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.07,
                child: GridView.count(
                 
                  crossAxisCount: 8,
                  children: List.generate(8, (index) {
                    return 
                       Container(
                        alignment: Alignment.center,
                        width: 70,
                        height: 70,
                        child: Row(
                          
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(_listButtons[index].label),
                            ),
                          ],
                        ),
                       );
                    
                  })
                  ),
              ),
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


