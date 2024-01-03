import 'package:dart_unit_test/src/book.dart';

class bookRepository {

  void save(Book book){
    print("save $book");
    throw UnsupportedError("save not supported");
  }

  void update(Book book){
    print("update $book");
    throw UnsupportedError("update not supported");
  }

  void delete(Book book){
    print("delete $book");
    throw UnsupportedError("delete not supported");
  }

  Book? finById(String id){
    print("find book by id $id");
    throw UnsupportedError("find not supported");
  }
}