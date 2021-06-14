import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColor with ChangeNotifier {
  bool _isLb = true;

  bool get isLb => _isLb;
  set isLb(bool value) {
    _isLb = value;
    notifyListeners();
  }

  Color get color => (_isLb) ? Colors.lightBlue : Colors.yellow[700];
}
