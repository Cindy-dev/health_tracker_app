import 'package:flutter/cupertino.dart';

navigatePush(BuildContext context, Widget widget){
  return Navigator.push(context,CupertinoPageRoute(builder: ((context) => widget)));
}