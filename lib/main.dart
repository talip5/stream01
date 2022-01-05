import 'dart:async';

import 'package:flutter/material.dart';

void main(){
  StreamController streamController=StreamController();

  void streamYayin() async{
    for(int i=0; i<5; i++){
      await Future.delayed(Duration(seconds: 1));
      if(i==2){
        streamController.sink.addError(i);
      }
      streamController.sink.add(i);
    }
    streamController.close();
  }

  streamYayin();

  streamController.stream.listen((event) {
    print(event);
  },
    onDone:() {
    print('yayın bitti');
    },
    onError: (error){
    print('onError35 : $error');
    },
    cancelOnError: true
  );

}