import 'package:dart_unit_test/src/book.dart';
import 'package:dart_unit_test/src/book_repository.dart';

class bookService {

  bookRepository BookRepository;

  bookService(this.BookRepository);

  void save(String id, String name, int price) {
    if (id == "" || name == "" || price <= 0) {
      throw Exception("invalid data");
    }
     BookRepository.save(Book(name, price, id));
  }

  void update(String id, String name, int price) {
    if (id == "" || name == "" || price <= 0) {
      throw Exception("invalid data");
    }

    var book = BookRepository.finById(id);
    if (book == null) {
      throw Exception("Book not found");
    } else {
      book.name = name;
      book.price = price;
      BookRepository.save(book);
    }
  }

  Book find(String id){
    var book = BookRepository.finById(id);
    if(book == null){
      throw Exception("book not found");
    }else{
      return book;
    }
  }

  void delete(String id){
    var book = BookRepository.finById(id);
    if(book == null){
      throw Exception("book not found");
    } else {
      BookRepository.delete(book);
    }
  }
}