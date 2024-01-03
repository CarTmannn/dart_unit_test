import 'package:test/test.dart';


void main(){

  var data = "rehan";

        setUpAll((){
          print("start unit test");
        });

        setUp((){
          data = "rehan";
        });

      tearDown((){
        print(data);
      });

      tearDownAll((){
        print("end unit test");
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