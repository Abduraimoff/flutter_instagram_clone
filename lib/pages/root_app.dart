import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/pages/home_page.dart';
import 'package:instagram_clone/pages/search_page.dart';
import 'package:instagram_clone/util/bottom_nav_bar_icons.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int _selectedIndex = 0;

  List pages = [
    HomePage(),
    SearchPage(),
    Center(child: Text('Add')),
    Center(child: Text('Activity')),
    Center(child: Text('Account')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: getBottomNavBar(),
    );
  }

  Widget getBottomNavBar() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.grey.withOpacity(.7),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(icons.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              icon: SvgPicture.asset(
                _selectedIndex == index
                    ? icons[index]['active']
                    : icons[index]['inactive'],
                width: 25,
                height: 25,
              ),
            );
          }),
        ),
      ),
    );
  }
}
