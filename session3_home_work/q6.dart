void main() {
  List<String> animals = ['lion', 'elephant', 'cat'];
  animals.add('dog');
  print(animals);
  animals.remove(animals.last);
  print(animals);
  animals[1] = 'rabbit';
  print(animals);
  print(animals.first);
  print(animals.last);
  print(animals.length);
}
