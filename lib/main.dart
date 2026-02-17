import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'grid_builder.dart';
import 'grid_count.dart';
import 'grid_custom.dart';
import 'grid_extent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: GridviewExample(),
        );
      },
    );
  }
}

class GridviewExample extends StatefulWidget {
  const GridviewExample({super.key});

  @override
  State<GridviewExample> createState() => _GridviewExampleState();
}

class _GridviewExampleState extends State<GridviewExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Grid Demo", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Container(
              color: Colors.white,
              child: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicatorColor: Colors.red,
                labelColor: Colors.black,
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(text: "GridView.count"),
                  Tab(text: "GridView.builder"),
                  Tab(text: "GridView.custom"),
                  Tab(text: "GridView.extent"),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            GridCountScreen(),
            GridBuilderScreen(),
            GridCustomScreen(),
            GridExtentScreen(),
          ],
        ),
      ),
    );
  }
}
