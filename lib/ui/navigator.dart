import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(title: 'BottomNavigationBar Demo',
 theme: ThemeData(primarySwatch: Colors.teal),
 home: MainPage(),
 );
 }
}
class MainPage extends StatefulWidget {
 @override
 _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
 int _selectedIndex = 0;
 // Daftar halaman yang akan ditampilkan
 static final List<Widget> _pages = <Widget>[
 HomePage(),
 ProfilePage(),
 SettingsPage(),
 ];
 void _onItemTapped(int index) {
 setState(() {
 _selectedIndex = index; // ubah halaman
 });
 }
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text('Bottom Navigation Demo'),
 ),
 body: _pages[_selectedIndex], // Tampilkan halaman sesuai index
 bottomNavigationBar: BottomNavigationBar(
 currentIndex: _selectedIndex,
 onTap: _onItemTapped,
 selectedItemColor: Colors.teal,
 items: const [
 BottomNavigationBarItem(
 icon: Icon(Icons.home),
 label: 'Beranda',
 ),
 BottomNavigationBarItem(
 icon: Icon(Icons.person),
 label: 'Profil',
 ),
 BottomNavigationBarItem(
 icon: Icon(Icons.settings),
 label: 'Pengaturan',
 ),
 ],
 ),
 );
 }
}
// Halaman Beranda
class HomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Center(child: Text('Ini Halaman Beranda'));
 }
}
// Halaman Profil
class ProfilePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Center(child: Text('Ini Halaman Profil'));
 }
}
// Halaman Pengaturan
class SettingsPage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Center(child: Text('Ini Halaman Pengaturan'));
 }
} 
