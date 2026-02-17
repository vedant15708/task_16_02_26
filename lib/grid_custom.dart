import 'package:flutter/material.dart';
import 'package:task_16_02_26/model/gridmodel.dart';
import 'package:task_16_02_26/widget/card.dart';

class GridCustomScreen extends StatelessWidget {
  const GridCustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.custom(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.6,
        ),
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return GridCard(item: GridList[index % GridList.length]);
        }, childCount: 6),
      ),
    );
  }
}
