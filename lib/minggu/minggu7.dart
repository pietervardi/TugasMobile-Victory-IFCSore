import 'package:flutter/material.dart';

class Minggu7 extends StatefulWidget {
  const Minggu7({Key? key}) : super(key: key);

  @override
  State<Minggu7> createState() => _Minggu7State();
}

class _Minggu7State extends State<Minggu7> {
  ScrollController scrollController = ScrollController();
  List<String> stanza1 = [
    'Indonesia Tanah Airkoe Tanah Toempah Darahkoe',
    'Di Sanalah Akoe Berdiri Djadi Pandoe Iboekoe',
    'Indonesia Kebangsaankoe Bangsa Dan Tanah Airkoe',
    'Marilah Kita Berseroe Indonesia Bersatoe',
    'Hidoeplah Tanahkoe Hidoeplah Negrikoe',
    'Bangsakoe Ra\'jatkoe Sem\'wanja',
    'Bangoelah Jiwanya Bangoenlah Badannja',
    'Oentoek Indonesia Raja',
    '(Reff: Diulang 2 Kali)',
    'Indonesia Raja Merdeka Merdeka Tanakoe Negrikoe Jang Koetjinta',
    'Indonesia Raja Merdeka Merdeka Hidoeplah Indonesia Raja'
  ];
  List<String> stanza2 = [
    'Indonesia Tanah Jang Moelia Tanah Kita Jang Kaya',
    'Di Sanalah Akoe Berdiri Oentoek Slama-Lamanja',
    'Indonesia Tanah Poesaka P\'saka Kita Semoeanja',
    'Marilah Kita Mendo\'a Indonesia Bahagia',
    'Soeboerlah Tanahnja Soeboerlah Djiwanja',
    'Bangsanja Ra\'jatnja Sem\'wanja',
    'Sadarlah Hatinja Sadarlah Boedinja',
    'Oentoek Indonesia Raja',
    '(Reff: Diulang 2 Kali)',
    'Indonesia Raja Merdeka Merdeka Tanakoe Negrikoe Jang Koetjinta',
    'Indonesia Raja Merdeka Merdeka Hidoeplah Indonesia Raja'
  ];
  List<String> stanza3 = [
    'Indonesia Tanah Jang Soedji  Tanah Kita Jang Sakti',
    'Di Sanalah Akoe Berdiri \'Njaga Iboe Sedjati',
    'Indonesia Tanah Berseri Tanah Jang Akoe Sajangi',
    'Marilah Kita Berdjandji Indonesia Abadi',
    'S\'lamatlah Ra\'jatnja S\'lamatlah Poetranja',
    'Poelaoenja Laoetnja Sem\'wanja',
    'Madjoelah Negrinja Madjoelah Pandoenja',
    'Oentoek Indonesia Raja',
    '(Reff: Diulang 2 Kali)',
    'Indonesia Raja Merdeka Merdeka Tanakoe Negrikoe Jang Koetjinta',
    'Indonesia Raja Merdeka Merdeka Hidoeplah Indonesia Raja',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lirik Lagu"),
        backgroundColor: Colors.redAccent,
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              const Icon(Icons.notifications),
              Positioned(
                top: 10,
                right: 0,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow,
                  ),
                  child: const Text(
                    '5',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(width: 20,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn
          );
        },
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.arrow_upward),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.volume_up_outlined), label: 'Putar Lagu'),
        ]
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Indonesia raya',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  Column(
                    children: stanza1.map((e) {
                      return Text(
                        e, 
                        style: const TextStyle(
                        fontSize: 18
                        )
                      );
                    }).toList(),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  Column(
                    children: stanza2.map((e) {
                      return Text(
                        e, 
                        style: const TextStyle(
                          fontSize: 18
                        )
                      );
                    }).toList(),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  Column(
                    children: stanza3.map((e) {
                      return Text(
                        e, 
                        style: const TextStyle(
                          fontSize: 18
                        )
                      );
                    }).toList(),
                  ),
                ],
              )
            )
          ],
        )
      )
    );
  }
}