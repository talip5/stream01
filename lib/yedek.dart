import 'dart:async';

import 'package:flutter/cupertino.dart';

void main() {
  print('Stream');

  myFunction() async{
    for(int i=0; i<5; i++){
      await Future.delayed(Duration(seconds: 1));
      print(i);
    }
  }
  myFunction();

  final myStrings=(['ali','veli']);

  for(final str in myStrings){
    print(str);
  }
}