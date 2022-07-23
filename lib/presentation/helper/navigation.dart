import 'package:flutter/cupertino.dart';

navigatePush(BuildContext context, Widget widget){
  return Navigator.push(context,CupertinoPageRoute(builder: ((context) => widget)));
}

navigatePop(BuildContext context, Widget widget){
  return Navigator.pop(context,CupertinoPageRoute(builder: ((context) => widget)));
}