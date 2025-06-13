import 'package:flutter/material.dart';
class TampilanLayar extends StatefulWidget {
 const TampilanLayar({super.key});
 @override
 State<TampilanLayar> createState() => _TampilanLayarState();
}
class _TampilanLayarState extends State<TampilanLayar> { int number = 0;
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: Scaffold(
 appBar: AppBar(
 backgroundColor: const Color.fromARGB(255, 134, 4, 178),
 title: const Text("Belajar Flutter"),
 ),
 body: Center(
 child: Text(
 number.toString(),
 style: TextStyle(
 color: Color.fromARGB(255, 19, 19, 19),
 fontWeight: FontWeight.bold,
 fontSize: 20),
 ),
 ),
 floatingActionButton: FloatingActionButton(
 onPressed: () {
 setState(() {
 number += 1;
 });
 },
 child: const Icon(Icons.add),
 ),
 ));
 }
}