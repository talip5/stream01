import 'dart:async';

void main() async{
  final tunnel=StreamController();
  tunnel.sink.add('mouse1');
  checher(tunnel, 'dog');
  tunnel.sink.add('ali');

  tunnel.stream.listen((event) async{
    await Future.delayed(Duration(seconds: 5));
    print(event);
    await Future.delayed(Duration(seconds: 5));
  });
  tunnel.close();
}

void checher(StreamController controller,String name){
  if(name=='dog'){
    controller.sink.addError('$name is not mouse');
  } else{
    controller.sink.add('mouse2');
  }
}