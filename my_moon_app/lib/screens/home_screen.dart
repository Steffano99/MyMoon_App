import 'package:flutter/material.dart';
import 'package:my_moon_app/widgets/custom_dropdown.dart';

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
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_pageTitle(), _destinationDropDown()]),
        ),
      ),
    );
  }

  Widget _spaceShipWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/moon.png"),
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
    return CustomDropdownButton(
      values: const ['James Webb Station', 'Brian Workstation'],
      width: _deviceWidth * 0.05,
    );
  }
}
