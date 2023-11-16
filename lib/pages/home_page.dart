import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

// ignore: must_be_immutable
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
          padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth * 0.05,
          ),
          height: _deviceHeight,
          width: _deviceWidth,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: _astronautImageWidget(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
              ),
            ],
          ),
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
      height: _deviceHeight * 0.5,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astronaut.png"),
        ),
      ),
    );
  }

  Widget _destinationDropdownWidget() {
    return CustomDropdownButtonClass(
      items: const [
        "Syria",
        "Lebanon",
        "UAE",
      ],
      width: _deviceWidth,
    );
  }

  Widget _travelersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(
          items: const [
            "1",
            "2",
            "3",
            "4",
          ],
          width: _deviceWidth * 0.45,
        ),
        CustomDropdownButtonClass(
          items: const [
            "Economy",
            "Business",
            "VIP",
          ],
          width: _deviceWidth * 0.4,
        ),
      ],
    );
  }

  Widget _bookRideWidget() {
    return SizedBox(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropdownWidget(),
          _travelersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      width: _deviceWidth,
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride!",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
