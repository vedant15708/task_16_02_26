import 'package:flutter/material.dart';
import 'package:task_16_02_26/widget/card.dart';
import 'model/gridmodel.dart';

class GridCountScreen extends StatelessWidget {
  const GridCountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: (2 / 1),
        children: List.generate(
          GridList.length * 4,
          (index) => GridCard(item: GridList[index % GridList.length]),
        ),
      ),
    );
  }
}
