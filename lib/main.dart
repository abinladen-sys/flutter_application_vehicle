void main() {
  Car car1 = Car("Toyota", 4);
  Car car2 = Car("BMW", 2);

  car1.describe();
  car2.describe();
}

class Vehicle {
  String BrandName;

  Vehicle(this.BrandName);
  describe() {
    print("This is a vehicle brand $BrandName");
    //c
  }
}

class Car extends Vehicle {
  int doors;
  Car(super.BrandName, this.doors);

  @override
  describe() {
    print("This is a car brand $BrandName with $doors doors");
  }
}
