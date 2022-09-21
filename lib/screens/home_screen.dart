import 'package:flutter/material.dart';
import '../widgets/appbar_home_screen.dart';
import '../widgets/container_page_view.dart';
import '../widgets/menu_soeciality.dart';
import '../widgets/search_home_screen.dart';
import '../widgets/speciality_icon_text.dart';
import '../widgets/top_doctor_category.dart';

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
        children: const <Widget>[
          SearchHomeScreen(),
          ContainerPageView(),
          SizedBox(height: 10),
          menuSpeciality(
            label: 'Doctor Speciality',
          ),
          SizedBox(
            height: 10,
          ),
          specialityIconAndText(),
          SizedBox(
            height: 10,
          ),
          menuSpeciality(
            label: 'Top Doctor',
          ),
          topDoctorsCategory(),
        ],
      ),
    );
  }
}





