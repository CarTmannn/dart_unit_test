class Book{

  String name;
  int price;
  String id;

  Book(this.name, this.price, this.id);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          price == other.price &&
          id == other.id;

  @override
  int get hashCode => name.hashCode ^ price.hashCode ^ id.hashCode;
}