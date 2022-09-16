import 'package:appointmentsapp/screens/home_screen.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   var _cuurentIndex = 0;
  final List<Widget> _listMainPages = const [
    HomeScreen(),
    Center(child: Text('Appointments'),),
    Center(child: Text('details'),),
    Center(child: Text('Profile'),),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _listMainPages[_cuurentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        
        currentIndex: _cuurentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Appointments'),
          BottomNavigationBarItem(icon: Icon(Icons.details_sharp), label: 'Details'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

        ],
        onTap: (index) {
          setState(() {
            _cuurentIndex = index;
          });
        },
      ),
    );
  }
}