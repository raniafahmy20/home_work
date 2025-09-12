/*
Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
 only the movies with a rating above 7.

*/
void main() {
  List<Movie> movie = [];
  Movie movie1 = Movie(rating: 5.3, title: 'the earth');
  Movie movie2 = Movie(rating: 8.3, title: 'the earth');
  Movie movie3 = Movie(rating: 9.6, title: 'the earth');
  Movie movie4 = Movie(rating: 3.3, title: 'the earth');
  movie.addAll([movie1, movie2, movie3, movie4]);
  movie.forEach((Movie item) {
    if ((item.rating)! > 7) {
      print('the movie name: ${item.title} and rating: ${item.rating} ');
    }
  });
}

class Movie {
  String? title;
  num? rating;
  Movie({required String title, required num rating}) {
    this.rating = rating;
    this.title = title;
  }
}
