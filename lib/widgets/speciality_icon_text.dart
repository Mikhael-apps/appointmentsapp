import 'package:flutter/material.dart';

import '../models/itemdata.dart';

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

class specialityIconAndText extends StatelessWidget {
  const specialityIconAndText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.19,
        child: GridView.count(
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 0,
          crossAxisSpacing: 5,
          crossAxisCount: 4,
          children: List.generate(8, (index) {
            return Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue.shade100,
                      child: Icon(
                    _listCategory[index].iconData,
                    color: Colors.blue,
                  )),
                  const SizedBox(height: 3,),
                  Text(_listCategory[index].title,
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  
                ],
              ),
              
            );
          }),
        ));
  }
}