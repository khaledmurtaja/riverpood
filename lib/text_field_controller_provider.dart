import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final numberOneControllerProvider=Provider<TextEditingController>((ref){
  return TextEditingController();
});

final numberTwoControllerProvider=Provider<TextEditingController>((ref){
  return TextEditingController();
});

class Calculate extends Notifier<num>{
  @override
  num build() {
    state = 0 ;
    return state;
  }

  num sum (String number1, String number2){
    num firstNum = num.parse(number1);
    num secondNum = num.parse(number2);

    state = firstNum + secondNum ;

    return state;
  }
}

final sumProvider = NotifierProvider<Calculate,num>(() {
  return Calculate() ;
});