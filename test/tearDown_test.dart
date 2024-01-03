import 'package:test/test.dart';


void main(){

  var data = "rehan";

      setUp((){
        data = "rehan";
      });

      tearDown((){
        print(data);
      });

      group("test string", (){

        test("string first", (){
          data = "$data mubarak";
          expect(data, equals("rehan mubarak"));
        });
        test("string first", (){
          data = "$data muhammad";
          expect(data, equals("rehan muhammad"));
        });

      });
}