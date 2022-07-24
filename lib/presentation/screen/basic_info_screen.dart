import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(top: deviceH / 19.85),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Container(
                        height: deviceH / 6.5,
                        width: deviceH / 6.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: const Color.fromRGBO(6, 20, 40, 0.15))),
                        child: Image.asset(
                            'asset/image/businessman_man_business 1.png'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text('Male',
                          style: TextStyle(
                            fontSize: deviceH / 52,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: deviceH / 28,
                  ),
                  Column(
                    children: [
                      Container(
                        height: deviceH / 6.5,
                        width: deviceH / 6.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: const Color.fromRGBO(6, 20, 40, 0.15))),
                        child: Image.asset(
                            'asset/image/businesswoman_business_woman_working_girl 1.png'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text('Female',
                          style: TextStyle(
                            fontSize: deviceH / 52,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ImageIcon(AssetImage('asset/image/Group.png')),
                ImageIcon(AssetImage('asset/image/Group (1).png'))
              ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ImageIcon(AssetImage('asset/image/Group.png')),
                ImageIcon(AssetImage('asset/image/Group (1).png'))
              ],
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
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 40, bottom: 45),
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
