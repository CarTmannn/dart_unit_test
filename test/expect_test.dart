import 'package:test/test.dart';

String sayHello(String name){
  return "hello $name";
}

void main(){
  test("test sayhello()", (){

  var response = sayHello("Dart");
  expect(response, "hello Dart");
  });
}