import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.3),
          child: _pageTitle(),
        ),
      ),
    );
  }

  Widget _spaceShipWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/moon.jpg"),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text.rich(TextSpan(
        text: 'SPACE',
        style: TextStyle(
            color: Color.fromARGB(255, 236, 212, 212),
            fontSize: 30,
            fontWeight: FontWeight.w700),
        children: [
          TextSpan(
            text: 'TRIP',
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 137, 160, 223),
                fontWeight: FontWeight.w700),
          )
        ]));
  }

  Widget _destinationDropDown() {
    List<String> _items = ['James Webb Station', 'Brian Workstation'];
    return DropdownButton(
      underline: Container(),
      value: _items.first,
      onChanged: (_) {},
      items: _items.map(
        (e) {
          return DropdownMenuItem(value: e, child: Text(e));
        },
      ).toList(),
    );
  }
}
