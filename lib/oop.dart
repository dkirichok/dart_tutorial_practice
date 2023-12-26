void main(List<String> args) {
  Laptop laptopOne = Laptop(1, 'Asus', 8);
  print(laptopOne);

  var houses = <House>[];
  House houseOne = House(1, 1200);
  House houseTwo = House(2, 1500);
  houses.add(houseOne);
  houses.add(houseTwo);
  houses.forEach((house) {
    print(house);
  });

  print(Genders.values);

  Cat cat = Cat(1, 'Jack', 'black', 'meaow');
  print(cat);

  Camera camera = Camera();
  camera.brand = 'Nikon';
  camera.color = 'black';
  camera.price = 200;
  print('${camera.id} - ${camera.brand}, ${camera.color}, ${camera.price}');

  Bottle bottle = Bottle();
  bottle.open();
}

// 1. Write a dart program to create a class Laptop with properties
// [id, name, ram] and create object of it and print all details.
class Laptop {
  final int id;
  final String name;
  final int ram;

  Laptop(this.id, this.name, this.ram);

  @override
  String toString() => 'Laptop id: $id, name: $name, ram: $ram';
}

// 2. Write a dart class House with properties [id, price].
// Create a constructor of it and create 2 objects of it.
// Add them to the list and print all details.
class House {
  final int id;
  final int price;

  House(this.id, this.price);

  @override
  String toString() => 'House id: $id, price: $price\$';
}

// 3. Write a dart program to create an enum class for gender [male, female,
// others] and print all values.
enum Genders { male, female, others }

// 4. Write a dart class Animal with properties [id, name, color].
// Create another class called Cat and extends it from Animal.
// Add new properties sound in String. Create an object of a Cat and print
// all details.
class Animal {
  final int id;
  final String name;
  final String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  final String sound;

  Cat(super.id, super.name, super.color, this.sound);

  @override
  String toString() => 'Id: $id, name: $name, color: $color, sound: $sound';
}

// 5. Write a dart program to create a class Camera with private properties
// [id, brand, color, price]. Create a getter and setter to get and set values.
// Also, create object of it and print all details.
class Camera {
  static int _id = 0;
  String? _brand;
  String? _color;
  int? _price;

  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(int value) => _price = value;

  int get id => _id;
  String get brand => _brand ?? 'Unknown';
  String get color => _color ?? 'Unknown';
  int get price => _price ?? 0;

  Camera() {
    _id++;
  }
}

// 6. Create an interface called Bottle and add a method to it called open().
// Create a class called CokeBottle and implement the Bottle and print the message
// “Coke bottle is opened”. Add a factory constructor to Bottle and return the
// object of CokeBottle. Instantiate CokeBottle using the factory constructor
// and call the open() on the object.
abstract class Bottle {

  void open();
  
  factory Bottle() {
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {

  @override
  void open() => print('Coke bottle is opened');
}
