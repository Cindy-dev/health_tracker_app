import 'package:flutter/material.dart';
import 'package:health_tracker/presentation/helper/home_helper.dart';
import 'package:health_tracker/presentation/helper/navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceH = MediaQuery.of(context).size.height;
    final deviceW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            deviceH / 29.8, deviceH / 29.85, deviceH / 29.85, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: deviceH / 37),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 32,
                ),
                onPressed: () => navigatePop(context, const HomeScreen()),
              ),
            ),
            RichText(
              text: const TextSpan(
                  text: 'Hello,\n',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff061428)),
                  children: [
                    TextSpan(
                        text: 'Cindy',
                        style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff061428)))
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: deviceH / 41, bottom: deviceH / 29),
              child: Row(
                children: [
                  Image.asset('asset/image/ic24-alert-full 1.png'),
                  const SizedBox(width: 8),
                  //using flexible to navigate a text overflow to a new line
                  const Flexible(
                      child: Text(
                          'You haven’t checked out the app recently. Do some workouts.',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff061428))))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('3 days ago',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff061428))),
                IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(AssetImage('asset/image/sync.png'))),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: card(deviceW / 2.5,
                            const Color.fromARGB(255, 249, 203, 218),
                            amount: 78,
                            measurement: 'bpm',
                            name: 'Heart Rate',
                            image: 'asset/image/ic24-heart 1.png',
                            textColor: const Color(0xffD2416E)),
                      ),
                      SizedBox(width: deviceW / 9),
                      Expanded(
                        child: card(deviceW / 2.5,
                            const Color.fromARGB(255, 224, 212, 248),
                            amount: 24,
                            measurement: 'min',
                            name: 'Exercise',
                            image: 'asset/image/ic24-bolt 1.png',
                            textColor: const Color(0xff7042C9)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceH / 59.7),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: card(deviceW / 2.5,
                            const Color.fromARGB(255, 190, 238, 237),
                            amount: 10,
                            measurement: 'km',
                            name: 'Walking',
                            image: 'asset/image/ic24-flag 1.png',
                            textColor: const Color(0xff0DB1AD)),
                      ),
                      SizedBox(width: deviceW / 9),
                      Expanded(
                          child: card(
                        deviceW / 2.5,
                        const Color.fromRGBO(25, 123, 210, 0.1),
                        amount: 8,
                        measurement: 'hrs',
                        name: 'Sleep',
                        image: 'asset/image/sleep_sleeping_rest 1.png',
                        textColor: const Color(0xff197BD2),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: BottomNavigationBar(elevation: 0, items: [
          BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('asset/image/Category 1.png'),
                color: Colors.white,
              ),
              label: '',
              activeIcon: Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff061428)),
                child: const ImageIcon(
                  AssetImage('asset/image/Category 1.png'),
                  color: Colors.white,
                ),
              )),
          const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('asset/image/Graph 1.png'),
                color: Colors.black,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('asset/image/add.png'),
                  color: Colors.black),
              label: ''),
          const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('asset/image/Notification 1.png'),
                color: Colors.black,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('asset/image/Profile 1.png'),
                color: Colors.black,
              ),
              label: ''),
        ]),
      ),
    );
  }
}
