import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchHomeScreen extends StatelessWidget {
  const SearchHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: CupertinoSearchTextField(
        suffixIcon: Icon(Icons.close, color: Colors.black,),
        placeholder: 'Search',
        itemSize: 21,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(11),
        ),
      ),
    );
  }
}