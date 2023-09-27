import 'package:e_ticaret5/Screens/home_page.dart';
import 'package:e_ticaret5/Screens/product_detail.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    ProductDetail()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        width: 10,
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width / 8,
            right: size.width / 8,
            bottom: size.height / 45,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(
                size.width / 25,
              ),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.snowshoeing,
                  ),
                  label: 'Business',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.school,
                  ),
                  label: 'School',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.school,
                  ),
                  label: 'School',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
