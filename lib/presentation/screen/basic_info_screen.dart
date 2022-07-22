import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../helper/navigation.dart';
import 'home_screen.dart';

class BasicInformationScreen extends StatelessWidget {
  const BasicInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceH = MediaQuery.of(context).size.height;
    final deviceW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            deviceH / 29.85, deviceH / 20.95, deviceH / 29.85, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Give us some basic \ninformation',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                )),
            Padding(
              padding: EdgeInsets.only(top: deviceH / 29.85),
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
                        width: deviceH/28,
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
            SizedBox(
              height: deviceH / 29.85,
            ),
           const Text('Height',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),

                SizedBox(
              height: deviceH / 29.85,
            ),
           const Text('Weight',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),
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
        ),),
    );
  }
}
