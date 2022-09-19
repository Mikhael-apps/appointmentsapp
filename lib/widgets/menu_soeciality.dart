import 'package:flutter/material.dart';


class menuSpeciality extends StatelessWidget {
  final String label;
  const menuSpeciality({
    Key? key, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  label,
                  style:
                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              const  Text(
                  'See All',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}