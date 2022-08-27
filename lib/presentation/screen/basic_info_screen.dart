import 'package:flutter/material.dart';
import 'package:health_tracker/presentation/helper/home_helper.dart';
import '../helper/navigation.dart';
import 'home_screen.dart';

class BasicInformationScreen extends StatefulWidget {
  const BasicInformationScreen({Key? key}) : super(key: key);

  @override
  State<BasicInformationScreen> createState() => _BasicInformationScreenState();
}

class _BasicInformationScreenState extends State<BasicInformationScreen> {
  double _currentHeightSliderValue = 180;
  double _currentWidthSliderValue = 80;
  String selected = '';

  @override
  Widget build(BuildContext context) {
    final deviceH = MediaQuery.of(context).size.height;
    final deviceW = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            deviceH / 29.85, deviceH / 10.95, deviceH / 29.85, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Give us some basic \ninformation',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: deviceH / 19.85,
                  right: deviceW / 19,
                  left: deviceW / 19),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 'male';
                        });
                      },
                      child: maleContainer(deviceH,
                          color:
                              selected == 'male' ? Colors.red : Colors.white)),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 'female';
                        });
                      },
                      child: femaleContainer(deviceH,
                          color: selected == 'female'
                              ? Colors.red
                              : Colors.white)),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text('Height',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceW / 22.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ImageIcon(AssetImage('asset/image/Group.png')),
                  ImageIcon(AssetImage('asset/image/Group (1).png'))
                ],
              ),
            ),
            Slider(
                divisions: 100,
                thumbColor: const Color(0xff061428),
                inactiveColor: const Color.fromRGBO(6, 20, 40, 0.15),
                activeColor: const Color.fromRGBO(6, 20, 40, 0.15),
                max: 500,
                min: 50,
                value: _currentHeightSliderValue,
                label: _currentHeightSliderValue.round().toString(),
                onChanged: (value) => {
                      setState(() {
                        _currentHeightSliderValue = value;
                      })
                    }),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceW / 22.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '50cm',
                    style: TextStyle(
                        color: Color(0xff061428),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '500cm',
                    style: TextStyle(
                        color: Color(0xff061428),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text('Weight',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceW / 22.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ImageIcon(AssetImage('asset/image/Group (1).png')),
                  ImageIcon(AssetImage('asset/image/Group (2).png'))
                ],
              ),
            ),
            Slider(
                divisions: 100,
                thumbColor: const Color(0xff061428),
                inactiveColor: const Color.fromRGBO(6, 20, 40, 0.15),
                activeColor: const Color.fromRGBO(6, 20, 40, 0.15),
                max: 200,
                min: 20,
                value: _currentWidthSliderValue,
                label: _currentWidthSliderValue.round().toString(),
                onChanged: (value) => {
                      setState(() {
                        _currentHeightSliderValue = value;
                      })
                    }),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceW / 22.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '20kg',
                    style: TextStyle(
                        color: Color(0xff061428),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '200kg',
                    style: TextStyle(
                        color: Color(0xff061428),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: 40, bottom: deviceW / 29),
        child: FloatingActionButton(
          backgroundColor: const Color(0xff061428),
          onPressed: () {
            navigatePush(context, const HomeScreen());
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
