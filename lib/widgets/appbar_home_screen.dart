import 'package:flutter/material.dart';


class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 5, top: 10),
      child: ListTile(
    // leading, title, subtitle, trailing
    leading: CircleAvatar(
      backgroundImage: AssetImage('images/mandoc.png'),
      radius: 25,
    ),
    title: Text('Good Morning', style: TextStyle(color: Colors.grey),),
    subtitle: Text('Andrew Aisley', 
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      ),
    );
  }
}
