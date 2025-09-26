/*  Q2
 Model shapes to compute total paintable area and cost.
 Requirements:- Provide a general shape type (concrete class) with an area() method that can be overridden.- Implement at least three concrete shape types with encapsulated dimensions and validated
 constructors (invalid → print; keep previous).- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
 code).- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
 cost to 2 decimals.
*/
void main() {
  Circle circle = Circle(50, 5);
  //print(circle.area());
  Rectangle rectangle = Rectangle(20, 30);
  // print(rectangle.area());
  Square square = Square(40, 70);
  // print(square.area());
  List<Shape> shapes = [square, rectangle, circle];
  double totalArea = 0;
  shapes.forEach((Shape shape) {
    totalArea += shape.area();
  });
  print('final total area: $totalArea');
  print('final totla cost: ${computeCost(totalArea).toStringAsFixed(2)}');
}

double computeCost(double totalArea) {
  double totalCost = 0;
  if (totalArea <= 50) {
    totalCost = totalArea * 1.5;
  } else if (totalArea <= 150) {
    totalCost = (50 * 1.5) + (totalArea - 50) * 1.25;
  } else {
    totalCost = (50 * 1.5) + (totalArea - 150) * 1.0;
  }
  return totalCost;
}

class Shape {
  double? _height;
  double? _width;
  Shape(double height, double width) {
    this._height = height;
    this._width = width;
  }
  void set height(double height) {
    if (height > 0) {
      this._height = height;
    } else {
      print('Invalid');
    }
  }

  void set width(double width) {
    if (width > 0) {
      this._width = width;
    } else {
      print('Invalid');
    }
  }

  double get height => this._height!;
  double get width => this._width!;

  double area() {
    return 0;
  }
}

class Rectangle extends Shape {
  Rectangle(double height, double width) : super(1.0, 1.0) {
    this.height = height;
    this.width = width;
  }

  @override
  double area() {
    return height * width;
  }
}

class Circle extends Shape {
  Circle(double height, double width) : super(1.0, 1.0) {
    this.raduis = height;
    this.width = 1;
  }

  void set raduis(double raduis) {
    if (raduis > 0) {
      this._height = raduis;
    } else {
      print('Invalid');
    }
  }

  double get raduis => this._height!;
  @override
  double area() {
    return 0.5 * (22 / 7) * raduis * raduis;
  }
}

class Square extends Shape {
  Square(double height, double width) : super(1.0, 1.0) {
    this.side = height;
    this.width = 1;
  }

  void set side(double side) {
    if (side > 0) {
      this._height = side;
    } else {
      print('Invalid');
    }
  }

  double get side => this._height!;
  @override
  double area() {
    return side * side;
  }
}
