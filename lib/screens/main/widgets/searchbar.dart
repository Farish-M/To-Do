import 'package:flutter/material.dart';

//Stateless widget that holds a prototype search bar
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.search),
        labelText: 'Search...',
      ),
    ));
  }
}
