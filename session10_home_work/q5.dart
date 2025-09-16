/* Q5
 Create a class Book with private fields _title and _pages.
 - Add setters: reject empty titles and pages ≤ 0.
 - Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
 - In main(), create a book, print its title and estimated reading time.
*/
void main() {
  Book book = Book();
  book.title = 'the earth';
  book.pages = 5;
  print('title: ${book.title} and time: ${book.reedingTime} minute');
}

class Book {
  String _title = 'default title';
  int _pages = 1;
  set title(String title) {
    if (!title.isEmpty) {
      this._title = title;
    }
  }

  set pages(int pages) {
    if (pages > 0) {
      this._pages = pages;
    }
  }

  String get title => this._title;
  int get reedingTime => this._pages * 2;
}
