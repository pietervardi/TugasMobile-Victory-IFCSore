import 'package:flutter/material.dart';

class Minggu2 extends StatelessWidget {
  const Minggu2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[900]!.withOpacity(1.0)
              ),
            ),
          ),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
            centerTitle: false,
            title: const Text(
              'victor_ganteng',
              style: TextStyle(
                fontWeight: FontWeight.w500
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.add_box_outlined,
                ),
                onPressed: () {}, 
              ),
              IconButton(
                icon: const Icon(
                  Icons.menu,
                ),
                onPressed: () {}, 
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xFFADADAD),
                  backgroundImage: AssetImage('assets/minggu2/profile.jpg'),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 0.4
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Text(
                          '1002',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 0.4
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Text(
                          '286',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 0.4
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5,),
            const Text(
              'Victor',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17,
                letterSpacing: 0.5
              ),
            ),
            const SizedBox(height: 3,),
            const Text(
              'Personal Blog',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                letterSpacing: 0.2
              ),
            ),
            const SizedBox(height: 3,),
            const Text(
              'Aku memang pendiam, diam-diam aku jatuh cinta padamu. Ada jamu,di atasnya kuku. Ternyata tawamu membekas di hatiku.',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.3
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[700],
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[700],
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Share Profile',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                children: [
                  Image.asset(
                    'assets/minggu2/1.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/minggu2/2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/minggu2/3.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://source.unsplash.com/random?1',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://source.unsplash.com/random?2',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}