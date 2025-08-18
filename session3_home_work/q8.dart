void main() {
  Map<String, dynamic> book = {
    'title': 'Dart Guide',
    'pages': 120,
    'price': 19.99
  };
  print(book['title']);
  book['price'] = 44;
  print(book['price']);
  book['author'] = 'mina';
  print(book.keys);
  print(book.values);
  print(book.containsKey('pages'));
}
