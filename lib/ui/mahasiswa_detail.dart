import 'package:flutter/material.dart';
class MhsDetail extends StatefulWidget {
const MhsDetail({super.key});
 @override
 State<MhsDetail> createState() => _MhsDetailState();
}
class _MhsDetailState extends State<MhsDetail> {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: Scaffold(
 appBar: AppBar(
 title: const Text("Detail Mahasiswa"),
 ),
 body: ListView.builder(
 padding: EdgeInsets.all(10),
 itemCount: 100,
 itemBuilder: (BuildContext context, int index) {
 return ListTile(
 leading: Image.network(
 "https://cdn.pixabay.com/photo/2018/02/24/23/05/architecture-3179435_960_720.jpg",
 ),
 title: Text("ini item $index"));
 },
 )),
 );
 }
}