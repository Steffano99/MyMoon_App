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
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [_pageTitle(), _flight()],
            ),
            Align(alignment: Alignment.center, child: _spaceShipWidget())
          ]),
        ),
      ),
    );
  }

  Widget _spaceShipWidget() {
    return Container(
      height: _deviceHeight * 0.5,
      width: _deviceWidth * 5,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.contain, image: AssetImage('assets/images/astro4.png')),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text.rich(
      TextSpan(
        text: 'SPACE',
        style: TextStyle(
            color: Colors.white, fontSize: 50, fontWeight: FontWeight.w700),
        children: [
          TextSpan(
            text: 'TRIP',
            style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 187, 235, 16),
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

  Widget _destinationDropDown() {
    return CustomDropdownButton(
      values: const [
        'James Webb Station',
        'Brian Workstation',
        'NASA Workstation'
      ],
      width: _deviceWidth,
    );
  }

  Widget __astronautInformation() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomDropdownButton(
            values: const ['1', '2', '3', '4'],
            width: _deviceWidth * 0.43,
          ),
          CustomDropdownButton(
            values: const ['Atmospheric', 'Lander', 'Orbiter', 'Rover'],
            width: _deviceWidth * 0.43,
          ),
        ]);
  }

  Widget _flight() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDown(),
          __astronautInformation(),
          _flightButton()
        ],
      ),
    );
  }

  Widget _flightButton() {
    return Container(
      width: _deviceWidth,
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      decoration: BoxDecoration(
        color: const Color.fromARGB(248, 1, 32, 20),
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          'Book Flight',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
