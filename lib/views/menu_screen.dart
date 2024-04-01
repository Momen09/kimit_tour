import 'package:flutter/material.dart';

import '../data/data.dart';
import '../shared/components.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 7.5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: categories.map((cat) {
          return categoryItem(categoryModel: cat);
        }).toList(),
      ),
    );
  }
}
