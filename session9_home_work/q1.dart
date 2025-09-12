/*
Q1 Create a class City with attributes name and population. In main(), create two city objects and
 print their details.

*/
void main() {
  City city1 = City(name: 'cairo', population: 10000);
  City city2 = City(name: 'Aswan', population: 40000);
  print(
    'city1=> the name:${city1.name} and numbers of populations:${city1.population} ',
  );
  print(
    'city2=> the name:${city2.name} and numbers of populations:${city2.population} ',
  );
}

class City {
  String? name;
  int? population;
  City({required String name, required int population}) {
    this.name = name;
    this.population = population;
  }
}
