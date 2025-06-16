import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application_1/ui/mahasiswa_detail.dart'; 


class MahasiswaForm extends StatefulWidget {
  const MahasiswaForm({super.key});
  @override
  State<MahasiswaForm> createState() => _MahasiswaFormState();
}

class _MahasiswaFormState extends State<MahasiswaForm> {
  String? gender; // radio button default awal tidak di select

  TextEditingController tglLahirText = TextEditingController();
  TextEditingController nimText = TextEditingController();
  TextEditingController namaText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Form Mahasiswa")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: nimText,
                decoration: const InputDecoration(labelText: "Nim"),
              ),
              TextFormField(
                controller: namaText,
                decoration: const InputDecoration(labelText: "Nama Mahasiswa"),
              ),
              ListTile(
                title: Text("Pria"),
                leading: Radio<String>(
                  value: "Pria",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Wanita"),
                leading: Radio<String>(
                  value: "Wanita",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
              TextField(
                controller: tglLahirText,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  labelText: "Masukkan Tanggal Lahir",
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    String formattedDate = DateFormat(
                      'yyyy-MMdd',
                    ).format(pickedDate);
                    setState(() {
                      tglLahirText.text = formattedDate;
                    });
                  }
                },
              ),

              ElevatedButton(
                onPressed: () {
                  String nimMhs = nimText.text;
                  String namaMhs = namaText.text;
                  String genderMhs = gender.toString();
                  String tglLahirMhs = tglLahirText.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MhsDetail(
                        nimMhs: nimMhs,
                        namaMhs: namaMhs,
                        genderMhs: genderMhs,
                        tglLahirMhs: tglLahirMhs,
                      ),
                    ),
                  );
                },
                child: const Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
