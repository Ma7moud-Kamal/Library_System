class BookClass {
  String title;
  String author;
  int yearPublished;
  bool isCheckedOut;

  //DEfault Constructor
  BookClass(
      {required this.title,
      required this.author,
      required this.yearPublished,
      required this.isCheckedOut});

  //Named Constructor
  BookClass.unknown({required this.title, required this.yearPublished})
      : author = "UnKnown",
        isCheckedOut = false;

  //Factory Constructor
  factory BookClass.fromMap(Map<String, dynamic> map) {
    return BookClass(
        title: map['title'],
        author: map['author'] ?? 'Unknown',
        yearPublished: map['yearPublished'],
        isCheckedOut: map['isCheckedOut'] ?? false);
  }

// convert object book to a map
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'author': author,
      'yearPublished': yearPublished,
      'isCheckedOut': isCheckedOut
    };
  }
}

// typedef inilized ouside the class
typedef BookFilter = bool Function(BookClass book);

//method to filter boooks using BookFilter
List<BookClass> filterBooks(List<BookClass> books, BookFilter filter) {
  return books.where(filter).toList();
}

// Method to get the status of a book using a switch case
String getBookStatus(BookClass book) {
  switch (book.isCheckedOut) {
    case true:
      return 'Checked Out';
    case false:
      return 'Available';
    default:
      return 'Status Unknown';
  }
}
