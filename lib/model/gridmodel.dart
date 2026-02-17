import 'dart:math';
import 'package:flutter/material.dart';

class GridModel {
  final String title;
  final IconData icon;
  final Color color;

  GridModel(this.title, this.icon, this.color);
}

class RandomColorModel {
  Random random = Random();
  Color getColor() {
    return Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }
}

RandomColorModel colorGenerator = RandomColorModel();

List<GridModel> GridList = [
  GridModel("Bicycle", Icons.pedal_bike, colorGenerator.getColor()),
  GridModel("Boat", Icons.directions_boat, colorGenerator.getColor()),
  GridModel("Bus", Icons.directions_bus, colorGenerator.getColor()),
  GridModel("Train", Icons.train, colorGenerator.getColor()),
  GridModel("Walk", Icons.directions_walk, colorGenerator.getColor()),
  GridModel("Contact", Icons.contact_mail, colorGenerator.getColor()),
];
