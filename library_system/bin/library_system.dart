// ignore_for_file: unused_element

import 'package:library_system/book_class.dart';
// import 'package:library_system/library_system.dart' as library_system;

void main(List<String> arguments) {
  // ignore: unused_local_variable
  BookClass bookClass = BookClass(
      title: 'Chemistry Between us ',
      author: 'Scott Fitz',
      yearPublished: 2010,
      isCheckedOut: false);

  // ignore: unused_local_variable
  BookClass bookClass2 =
      BookClass.unknown(title: "Deep Work", yearPublished: 2000);

  Map<String, dynamic> bookMap = {
    'title': 'Mind Without Body',
    'author': 'Ahemd Khaled Tawfiq',
    'yearPublished': 2012,
    'isCheckedOut': true
  };

  // Additional books to be added
  // ignore: unused_local_variable
  List<Map<String, dynamic>> additionalBooks = [
    {
      'title': 'The Silent Patient',
      'author': 'Alex Michaelides',
      'yearPublished': 2019,
      'isCheckedOut': false
    },
    {
      'title': 'Where the Crawdads Sing',
      'author': 'Delia Owens',
      'yearPublished': 2018,
      'isCheckedOut': true
    }
  ];

  // ignore: unused_local_variable
  BookClass bookClass3 = BookClass.fromMap(bookMap);

  // ignore: unused_local_variable
  List<BookClass> books = [bookClass, bookClass2, bookClass3];
  books.addAll(additionalBooks.map((map) => BookClass.fromMap(map)).toList());

  // ignore: unused_local_variable
  filterByYear(BookClass book) => book.yearPublished > 2000;

  //Call and apllay the filter
  // ignore: unused_local_variable
  List<BookClass> filterdBooks = filterBooks(books, filterByYear);

  List<BookClass> booksByAhmed =
      filterBooks(books, (book) => book.author == 'Ahemd Khaled Tawfiq');
  print('Books by Ahmed Khaled Tawfiq: ${booksByAhmed.length}');

  // Print the filtered books
  for (BookClass book in filterdBooks) {
    print(
        'Title: ${book.title}, Author: ${book.author}, Year Published: ${book.yearPublished}, Is Checked Out: ${book.isCheckedOut}');
  }

  // Print the status of each book
  // ignore: avoid_function_literals_in_foreach_calls
  books.forEach((book) {
    print('Status of "${book.title}": ${getBookStatus(book)}');
  });

  // Create a list of book titles using map
  List<String> bookTitles = books.map((book) => book.title).toList();
  print('Book Titles: $bookTitles');
}





// BookClass bookClass2 =
//     BookClass.unknown(title: "Deep Work", yearPublished: 2000);



//reduce
// int countCheckedOutBooks(List<Book> books) {
//   return books
//       .map((book) => book.isCheckedOut ? 1 : 0)
//       .reduce((value, element) => value + element);
// }

//fodl
// int totalBooksPublishedAfter(List<Book> books, int year) {
//   return books.fold(
//       0, (total, book) => book.yearPublished > year ? total + 1 : total);
// }
