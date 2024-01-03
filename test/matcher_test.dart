import 'package:test/test.dart';

String sayHello(String name){
  return "hello $name";
}

int sum(int a, int b){
  return a  + b;
}

void main(){
  test("test sayhello() with matcher", (){

  expect(sayHello("rehan"), endsWith("rehan"));
  expect(sayHello("rehan"), startsWith("hello"));
  expect(sayHello("rehan"), equalsIgnoringCase("hello rehan"));
  expect(sayHello("rehan"), isA<String>());
  });

  test("test sum() with matcher", (){
  expect(sum(2, 2), equals(4));
  expect(sum(2, 2), greaterThan(3));

  });

}