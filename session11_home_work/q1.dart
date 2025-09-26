/* Q1
 Design an OOP model for planning trip fuel across multiple vehicle types.
 Requirements:- Provide a general vehicle type with encapsulated core data
  (private fields) and validated constructors
 (invalid → print an error; keep previous values).
 - Create at least two specialized vehicle types that inherit from the general type
  and introduce one private field each affecting fuel usage, with validation.
 - Define a fuel computation method in the general type;
  specialized types must override it with their own rule.
 - In a mixed collection of vehicles, given a list of trip distances,
  compute total fuel per vehicle and print
 which vehicles cannot complete the route under their own constraints 
 (you define the constraint per
 type).
*/
class Vehicle {
  double? _speed;
  double? _thermostat;
  num? _fuelConsumingPerLitre;
  double? capacity;
  Vehicle(
    double speed,
    num fuelConsumingPerLitre,
    double thermostat,
    double capacity,
  ) {
    this.speed = speed;
    this.thermostat = thermostat;
    this.fuelConsumingPerLitre = fuelConsumingPerLitre;
    this.capacity = capacity;
  }
  void set speed(double speed) {
    if (speed > 0) {
      this._speed = speed;
    } else {
      print('InValid');
    }
  }

  void set fuelConsumingPerLitre(num fuelConsumingPerLitre) {
    if (fuelConsumingPerLitre > 0) {
      this._fuelConsumingPerLitre = fuelConsumingPerLitre;
    } else {
      print('InValid');
    }
  }

  void set thermostat(double thermostat) {
    if (thermostat > 0) {
      this._thermostat = thermostat;
    } else {
      print('error');
    }
  }

  double get speed => this._speed!;
  double get thermostat => this._thermostat!;
  num get fuelConsumingPerLitre => this._fuelConsumingPerLitre!;

  num fuelComputation(double distance) {
    num fuel = 0;
    if (thermostat > 500) {
      fuel = 20 / 100 * fuelConsumingPerLitre * distance;
    } else {
      fuel = fuelConsumingPerLitre * distance;
    }
    return fuel;
  }
}

class Car extends Vehicle {
  bool? _airConditioning;
  Car(
    double speed,
    num fuelConsumingPerLitre,
    double thermostat,
    double capacity,
    bool airConditioning,
  ) : super(1.0, 1, 1.0, 1) {
    this.fuelConsumingPerLitre = fuelConsumingPerLitre;
    this.thermostat = thermostat;
    this.capacity = capacity;
    this.airConditioning = airConditioning;
  }
  void set airConditioning(bool airConditioning) {
    this._airConditioning = airConditioning;
  }

  bool get airConditioning => this._airConditioning!;
  @override
  num fuelComputation(double distance) {
    num fuel = super.fuelComputation(distance);
    if (airConditioning) {
      fuel += (10 / 100 * fuel);
    }
    return fuel;
  }
}

class Truck extends Vehicle {
  double? _Weight; //carring
  Truck(
    double speed,
    num fuelConsumingPerLitre,
    double thermostat,
    double capacity,
    double weight,
  ) : super(1, 1, 1, 1) {
    this.fuelConsumingPerLitre = fuelConsumingPerLitre;
    this.weight = weight;
    this.capacity = capacity;
    this.thermostat = thermostat;
  }
  void set weight(double weight) {
    if (weight > 0) {
      this._Weight = weight;
    }
  }

  double get weight => this._Weight!;
  @override
  num fuelComputation(double distance) {
    num fuel = super.fuelComputation(distance);
    if (weight > 1000) {
      fuel += fuel * 50 / 100;
    } else {
      fuel += fuel * 10 / 100;
    }
    return fuel;
  }
}

void main() {
  List<double> tripDistance = [6000, 9800];
  Car car = Car(2000, 22, 8000, 500000, true);
  Truck truck = Truck(500, 22, 578, 800, 1000);
  List<Vehicle> vehicle = [car, truck];
  double totalFuel = 0;
  vehicle.forEach((Vehicle item) {
    totalFuel = 0;
    tripDistance.forEach((double distance) {
      totalFuel += item.fuelComputation(distance);
    });
    print(totalFuel);
    if (totalFuel <= item.capacity!) {
      print('$item is complete trip');
    } else {
      print('$item is not complete trip');
    }
  });
}
