import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

int sum(int a, int b){
  return a + b;
}
void main(){

  group("test sum()", (){
    test("positive", (){
    expect(sum(1, 2), equals(3));
      }, skip: "this test is still broken");
    test("negative", (){
      expect(sum(10, -5), equals(5));
    });
  });
}