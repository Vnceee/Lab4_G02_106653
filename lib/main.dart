import 'package:flutter/material.dart';
import 'package:lab_04/vegetable_pizza.dart';
import 'package:lab_04/cheese_pizza.dart';
import 'package:lab_04/fries.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Android ATC Pizza Place',
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuScreen(),
        'vegetable': (context) => const VegetablePizzaScreen(),
        'cheese': (context) => const CheesePizzaScreen(),
        'fries': (context) => const FriesScreen(),
      },
    );
  }
}

const TextStyle itemStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: const Text('Android ATC Pizza Place'),
      ),
      body: Column(
        children: [
          // Card 1: Vegetable Pizza
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'vegetable');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset('assets/images/pizza_1.png', width: 40),
                title: const Text('Vegetable Pizza', style: itemStyle),
              ),
            ),
          ),
          // Card 2: Cheese Pizza
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'cheese');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset('assets/images/pizza_2.png', width: 40),
                title: const Text('Cheese Pizza', style: itemStyle),
              ),
            ),
          ),
          // Card 3: Box of Fries
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'fries');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset('assets/images/fries.png', width: 40),
                title: const Text('Box of Fries', style: itemStyle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
