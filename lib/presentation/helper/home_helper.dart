import 'package:flutter/material.dart';

Widget card(
  double width,
  Color color, {
  required String image,
  required String name,
  required String measurement,
  required int amount,
  required Color textColor,
}) {
  return Container(
    width: width,
    padding: const EdgeInsets.fromLTRB(17, 16, 18, 15),
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        Row(
          children: [
            Image.asset(image),
            const SizedBox(
              width: 7,
            ),
            Text(name,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: textColor)),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(amount.toString(),
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: textColor)),
            const SizedBox(
              width: 10,
            ),
            Text(measurement,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: textColor)),
          ],
        )
      ],
    ),
  );
}

Widget maleContainer(double deviceH){
  return Expanded(
    child: Column(
      children: [
        Container(
          key: UniqueKey(),
          height: deviceH / 6.5,
          width: deviceH / 6.6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  color:
                  const Color.fromRGBO(6, 20, 40, 0.15))),
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
  );
}

Widget femaleContainer(double deviceH){
  return  Column(
    children: [
      Container(
        key: UniqueKey(),
        height: deviceH / 6.5,
        width: deviceH / 6.6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color:
                const Color.fromRGBO(6, 20, 40, 0.15))),
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
  );
}
