import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_tracker/presentation/helper/navigation.dart';
import 'package:health_tracker/presentation/screen/basic_info_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceH = MediaQuery.of(context).size.height;
    final deviceW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                deviceH / 30, 8, deviceH / 31, 0),
            child: Image.asset('asset/image/Group 7.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                deviceH / 30, deviceH / 14.8, deviceH / 31, deviceH / 19),
            child: const Text(
              'Welcome to \nyour personal \nhealth tracker',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 40, bottom: 45),
        child: FloatingActionButton(
          backgroundColor: const Color(0xff061428),
          onPressed: () {
            navigatePush(context, const BasicInformationScreen());
          },
          child: const Icon(
            Icons.arrow_forward,
            size: 30,
          ),
        ),
      ),
    );
  }
}
