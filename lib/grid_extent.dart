import 'package:flutter/material.dart';

class GridExtentScreen extends StatelessWidget {
  const GridExtentScreen({super.key});

  static const colors = [
    Color(0xffcfa5a5),
    Color(0xffaeb9bd),
    Color(0xffd9d86f),
    Color(0xff74d0c6),
    Color(0xffbfe3c7),
    Color(0xffe5e5e5),
    Color(0xffaab6d6),
    Color(0xffd9c3b8),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      padding: const EdgeInsets.all(5),
      maxCrossAxisExtent: MediaQuery.of(context).size.width / 2 - 5,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      childAspectRatio: 1,

      children: List.generate(8, (index) {
        final color = colors[index % colors.length];

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.access_alarm, color: Colors.white, size: 40),
              const SizedBox(height: 8),
              Text(
                "Item $index",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
