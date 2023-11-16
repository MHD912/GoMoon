import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.1),
          height: _deviceHeight,
          width: _deviceWidth,
          child: _destinationDropdownWidget(),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        fontSize: 70,
        fontWeight: FontWeight.w800,
        color: Colors.white,
      ),
    );
  }

  Widget _astronautImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astronaut.png"),
        ),
      ),
    );
  }

  Widget _destinationDropdownWidget() {
    List<DropdownMenuItem<String>> items = [
      "Syria",
      "Lebanon",
      "UAE",
    ].map((element) {
      return DropdownMenuItem(
        value: element,
        child: Text(element),
      );
    }).toList();
    return DropdownButton(
      onChanged: (value) {},
      items: items,
    );
  }
}
