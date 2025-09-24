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
  double _speed = 0;
  double _thermostat = 0;
  num _fuelConsuming = 0;
  Vehicle(double speed, num fuelConsuming, double thermostat) {
    this.speed = speed;
    this.thermostat = thermostat;
    this.fuelConsuming = fuelConsuming;
  }
  void set speed(double speed) {
    if (speed > 0) {
      this._speed = speed;
    } else {
      print('InValid');
    }
  }

  void set fuelConsuming(num fuelConsuming) {
    if (fuelConsuming > 0) {
      this._fuelConsuming = fuelConsuming;
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

  double get speed => this._speed;
  double get thermostat => this._thermostat;
  num get fuelConsuming => this._fuelConsuming;

  num fuelComputation(double distance) {
    num fuel = 0;
    if (thermostat > 500) {
      fuel = 20 / 100 * fuelConsuming * distance;
    } else {
      fuel = fuelConsuming * distance;
    }
    return fuel;
  }
}

class Car extends Vehicle {
  bool _airConditioning = true;
  Car(double speed, num fuelConsuming, double thermostat, bool airConditioning)
    : super(1.0, 1, 1.0) {
    this.fuelConsuming = fuelConsuming;
    this.thermostat = thermostat;
    this.airConditioning = airConditioning;
  }
  void set airConditioning(bool airConditioning) {
    this._airConditioning = airConditioning;
  }

  bool get airConditioning => this._airConditioning;
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
  double _Weight = 0; //carring
  Truck(double speed, num fuelConsuming, double thermostat, double weight)
    : super(1, 1, 1) {
    this.fuelConsuming = fuelConsuming;
    this.weight = weight;
    this.thermostat = thermostat;
  }
  void set weight(double weight) {
    if (weight > 0) {
      this._Weight = weight;
    }
  }

  double get weight => this._Weight;
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
  List<double> tripDistance = [6000, 4000, 45500, 9800];
  Car car = Car(2000, 22, 8000, true);
  Truck truck = Truck(500, 22, 578, 1000);
  List<Vehicle> vehicle = [car, truck];
  vehicle.forEach((Vehicle item) {
    tripDistance.forEach((double distance) {
      print('total fuel of $item :${item.fuelComputation(distance)}');
      print('if is complete route :${isComplete(item, distance)}');
    });
  });
}

bool isComplete(Vehicle vehicle, double distance) {
  bool iscomplete = true;
  if (vehicle.fuelComputation(distance) > 50000) {
    print('$vehicle is not completeted route');
    iscomplete = false;
  }
  return iscomplete;
}
