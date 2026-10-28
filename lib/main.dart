import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Vehicle {
  final String brandName;

  Vehicle(this.brandName);

  String describe() {
    return 'This is a vehicle brand $brandName';
  }
}

class Car extends Vehicle {
  final int doors;

  Car(super.brandName, this.doors);

  @override
  String describe() {
    return 'This is a car brand $brandName with $doors doors';
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vehicle Counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const VehicleHomePage(),
    );
  }
}

class VehicleHomePage extends StatefulWidget {
  const VehicleHomePage({super.key});

  @override
  State<VehicleHomePage> createState() => _VehicleHomePageState();
}

class _VehicleHomePageState extends State<VehicleHomePage> {
  int _counter = 0;
  final Car _car = Car('Toyota', 4);

  void _incrementCounter() {
    setState(() => _counter++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vehicle App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_car.describe()),
            const SizedBox(height: 24),
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
