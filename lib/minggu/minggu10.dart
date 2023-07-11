import 'package:flutter/material.dart';

class Minggu10 extends StatefulWidget {
  const Minggu10({Key? key}) : super(key: key);

  @override
  State<Minggu10> createState() => _Minggu10State();
}

class _Minggu10State extends State<Minggu10> {
  String judul = "M10";
  TextEditingController nama = TextEditingController();
  TextEditingController umur = TextEditingController();
  String? gender = "Wanita";

  @override
  void initState() {
    super.initState();
    nama.text = "Makima";
    umur.text = "22";
  }

  @override
  void dispose() {
    nama.dispose();
    umur.dispose();
    super.dispose();
  }

  showSnack(BuildContext context){
    return const SnackBar(
      content: Text("Profile Edited"),
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 3),
    );
  }

  showBanner(BuildContext context){
    return MaterialBanner(content: const Text("Profile Edited"), 
    actions: [
      TextButton(onPressed: (){ScaffoldMessenger.of(context).hideCurrentMaterialBanner();showDialog(
                          context: context,
                          builder: (context) => showAlertDialog(context))
                    ;}, child: const Text("Edit Again")),
      TextButton(onPressed: (){ScaffoldMessenger.of(context).hideCurrentMaterialBanner();ScaffoldMessenger.of(context).showSnackBar(showSnack(context));}, child: const Text("Dismiss"))
    ]
    );
  }

  showAlertDialog(BuildContext dialogcontext) {
    return AlertDialog(title: const Text('Edit Profile'), actions: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TextField(
                controller: nama,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Name',
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Text(
              "Umur",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
                controller: umur,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Umur',
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Text(
              "Gender",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
          ),
          DropdownButtonFormField(
            value: gender,
            menuMaxHeight: 85,
            items: const [
              DropdownMenuItem(
                value: "Pria",
                child: Text("Pria"),
              ),
              DropdownMenuItem(
                value: "Wanita",
                child: Text("Wanita"),
              )
            ],
            onChanged: (value) {
              setState(() {
                gender = value;
              });
            },
            onSaved: (value) {
              setState(() {
                gender = value;
              });
            },
          ),
          const Padding(padding: EdgeInsets.only(bottom: 20)),
          TextButton(
              onPressed: () {
                setState(() {});
                Navigator.pop(dialogcontext);
                ScaffoldMessenger.of(context)
                ..removeCurrentMaterialBanner()
                ..showMaterialBanner(showBanner(context));
              },
              child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.blue),
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ))),
        ],
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EAD3),
      appBar: AppBar(
        title: Text(judul),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Profile',
                      style: TextStyle(fontSize: 30),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(150.0),
                      child: Image.network(
                        "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/12/19/1425635161.jpg",
                        width: 300,
                        height: 300,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 20)),
                    Text("Name : ${nama.text}"),
                    Text("Umur : ${umur.text}"),
                    Text("Gender : $gender"),
                    const Padding(padding: EdgeInsets.only(bottom: 20)),
                    ElevatedButton(
                      child: const Text('Edit Profile'),
                      onPressed: () => showDialog(
                          context: context,
                          builder: (context) => showAlertDialog(context)),
                    ),
                  ]),
            )),
      )),
    );
  }
}
