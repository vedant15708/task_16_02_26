import 'package:flutter/material.dart';
import 'package:task_16_02_26/model/gridmodel.dart';

class GridCard extends StatelessWidget {
  final GridModel item;
  const GridCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: item.color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(item.icon, size: 34, color: Colors.black87),
          const SizedBox(height: 10),
          Text(item.title, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
