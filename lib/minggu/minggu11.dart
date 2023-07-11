import 'package:flutter/material.dart';

class Minggu11 extends StatefulWidget {
  const Minggu11({Key? key}) : super(key: key);

  @override
  State<Minggu11> createState() => _Minggu11State();
}

class _Minggu11State extends State<Minggu11> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF128C7E),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          actions: [
            const Padding(
              padding: EdgeInsets.only(top: 12, right: 15),
              child: Icon(
                Icons.search,
                size: 28,
              ),
            ),
            PopupMenuButton(
              elevation: 10,
              padding: const EdgeInsets.symmetric(vertical: 20),
              iconSize: 28,
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: 1,
                    child: Text(
                      'Settings',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
                const PopupMenuItem(
                    value: 2,
                    child: Text(
                      'Exit',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )),
              ],
              onSelected: (value) {
                switch (value) {
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                    );
                    break;
                  case 2:
                    Navigator.pop(context);
                    break;
                }
              },
            )
          ],
          bottom: const TabBar(
            indicatorColor: Color.fromRGBO(0, 167, 131, 1),
            indicatorWeight: 4,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Chats",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Calls"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromRGBO(0, 167, 131, 1),
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: [
            ChatPage(),
            CallsPage()
          ],
        ),
      ),
    );
  }
}

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final data = [
    {
      'name': 'Louis Lie',
      'message': 'Halo apa kabar',
      'time': '19:43',
      'profilePic': 'assets/minggu11/louis.jpg',
    },
    {
      'name': 'Jecksen Santoko',
      'message': 'Oke arigatou mas',
      'time': '17:25',
      'profilePic': 'assets/minggu11/jecksen.jpg',
    },
    {
      'name': 'Victor',
      'message': 'Panggil saya sepuh Victor 😎',
      'time': '14:30',
      'profilePic': 'assets/minggu11/victor.jpg',
    },
    {
      'name': 'Michael Lay',
      'message': 'Ada tugas hari ini om?',
      'time': '12:00',
      'profilePic': 'assets/minggu11/michael.jpg',
    },
    {
      'name': 'Mario',
      'message': 'Thankyou ya :)',
      'time': '11:30',
      'profilePic': 'assets/minggu11/mario.jpg',
    },
    {
      'name': 'Vincent Chaislie',
      'message': 'Mari makan',
      'time': '9:10',
      'profilePic': 'assets/minggu11/vincent.jpg',
    },
    {
      'name': 'Davin Tristan',
      'message': 'Wait',
      'time': 'Yesterday',
      'profilePic': 'assets/minggu11/davin.jpg',
    },
    {
      'name': 'Jansen Loman',
      'message': 'Dah nonton anime belum?',
      'time': '7:25 am',
      'profilePic': 'assets/minggu11/jansen.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: const PageScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              var chat = data[index];
              return InkWell(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                          AssetImage(chat['profilePic'].toString()),
                      ),
                      title: Text(
                        chat['name'].toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          chat['message'].toString(),
                          style: const TextStyle(fontSize: 13),
                        ),
                      ),
                      trailing: Text(
                        chat['time'].toString(),
                        style:
                            const TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    const Divider(
                      indent: 70,
                    )
                  ],
                ),
              );
            }
          )
        ],
      ),
    );
  }
}

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  final data = [
    {
      'name': 'Michael Lay',
      'time': 'Today, 12:00',
      'profilePic': 'assets/minggu11/michael.jpg',
    },
    {
      'name': 'Michael Lay',
      'time': 'Today, 11:59',
      'profilePic': 'assets/minggu11/michael.jpg',
    },
    {
      'name': 'Michael Lay',
      'time': 'Today, 11:58',
      'profilePic': 'assets/minggu11/michael.jpg',
    },
    {
      'name': 'Victor',
      'time': 'Yesterday, 21:00',
      'profilePic': 'assets/minggu11/victor.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                var call = data[index];
                return InkWell(
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                            AssetImage(call['profilePic'].toString()),
                        ),
                        title: Text(
                          call['name'].toString(),
                          style: const TextStyle(fontSize: 16),
                        ),
                        subtitle: Row(
                          children: [
                            const Icon(
                              Icons.call_received,
                              size: 12,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              call['time'].toString(),
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            )
                          ],
                        ),
                        trailing: const Icon(
                          Icons.call_sharp,
                          color: Color(0xFF075E55),
                        ),
                      ),
                      const Divider(
                        indent: 70,
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF128C7E),
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Settings',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/minggu11/default.jpg',
                        width: 65,
                        height: 65,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pieter Vardi',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'None',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black45),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  'Account',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Privacy, security, change number',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.lock),
                ),
                title: Text(
                  'Privacy',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Block contacts, disappearing messages',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message),
                ),
                title: Text(
                  'Chats',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Theme, wallpapers, chat history',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Message, group & call tones',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text(
                  'Storage and data',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Network usage, auto-download',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.language),
                ),
                title: Text(
                  'App language',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "English (phone's language)",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.help_outline_outlined),
                ),
                title: Text(
                  'Help',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Help center, contact us, privacy policy',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.people_alt),
                ),
                title: Text(
                  'Invite a friend',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
