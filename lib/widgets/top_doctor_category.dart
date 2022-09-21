import 'package:flutter/material.dart';

import '../models/itembutton.dart';


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

class topDoctorsCategory extends StatelessWidget {
  const topDoctorsCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *0.07,
      child: GridView.count(
       mainAxisSpacing: 20,
       crossAxisSpacing: 20,
        crossAxisCount: 8,
        children: List.generate(8, (index) {
          return 
             ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 TextButton(onPressed: () {}, child: Text(_listButtons[index].label))
               ],
             );
          
        },),
        ),
    );
  }
}