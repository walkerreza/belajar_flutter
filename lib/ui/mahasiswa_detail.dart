import 'package:flutter/material.dart';
class MhsDetail extends StatefulWidget {
 final String? namaMhs;
 final String? nimMhs;
 final String? genderMhs;
 final String? tglLahirMhs;
 const MhsDetail(
 {this.nimMhs, this.namaMhs, this.genderMhs,
this.tglLahirMhs, super.key});
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
 body: SingleChildScrollView(
 child: Column(
 children: [
 Text("Nim :" + widget.nimMhs.toString()),
 Text("Nama :" + widget.namaMhs.toString()),
 Text("Jenis Kelamin :${widget.genderMhs}"),
 Text("Tanggal Lahir :${widget.tglLahirMhs}")
 ],
 )),
 ),
 );
 }
}
