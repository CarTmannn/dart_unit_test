import 'package:dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

@GenerateNiceMocks([MockSpec<bookRepository>()])
import "mock_object_test.dart";
import 'mock_object_test.mocks.dart';

void main(){
  
  group("BookService", (){

    var bookRepository = MockbookRepository();
    var book_Service = bookService(bookRepository);

    test("save new book must success", (){
      book_Service.save("1", "harus jago dart", 1000000);
      verify(bookRepository.save(Book("harus jago dart", 1000000, "1"))).called(1);
    });

    test("find by id not found", (){
      expect((){
        book_Service.find("1");
      }, throwsException);
    });

    test("find book by id success", (){
      when(bookRepository.finById("1"))
          .thenReturn(Book("harus jago dart", 1000000, "1"));

      var book = book_Service.find("1");
      expect(book, equals(Book("harus jago dart", 1000000, "1")));

      verify(bookRepository.finById("1"));
    });
  });
}