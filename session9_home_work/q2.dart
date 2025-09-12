/*
Q2 Create a class Temperature with an attribute celsius. Add a method toFahrenheit() that returns
 the temperature in Fahrenheit. In main(), create an object and print the converted value.
*/
void main() {
  Temperature temperature = Temperature(33);
  print('the temperature in fahrenheit:${temperature.toFahrenheit()}');
}

class Temperature {
  num? celsius;
  Temperature(num celsius) {
    this.celsius = celsius;
  }
  num toFahrenheit() {
    return ((celsius! * 1.8) + 32);
  }
}
