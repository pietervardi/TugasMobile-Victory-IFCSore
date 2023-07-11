import 'package:flutter/material.dart';

class Minggu9 extends StatefulWidget {
  const Minggu9({Key? key}) : super(key: key);

  @override
  State<Minggu9> createState() => _Minggu9State();
}

class _Minggu9State extends State<Minggu9> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/minggu11/victor.jpg',
                    ),
                  ),
                ),
              );
            },
          ),
          actions: [
            Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
          ],
          backgroundColor: Colors.white,
          title: const Text(
            'Twitter',
            style: TextStyle(
              color: Colors.black, 
              fontSize: 26, 
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Color(0xFF00ACEE),
            indicatorWeight: 3,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "For you",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Following"
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: ListView(
              children: [
                DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/minggu11/victor.jpg',
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Victor',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18
                            ),
                          ),
                          Text(
                            '@victorchan000',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(height: 12,),
                          Text(
                            '30 Following 800 Followers',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.person_outlined, 
                    color: Colors.black,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.chat, 
                    color: Colors.black,
                  ),
                  title: Text(
                    'Topics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.bookmark_outline, 
                    color: Colors.black,
                  ),
                  title: Text(
                    'Bookmarks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.list_alt_rounded, 
                    color: Colors.black,
                  ),
                  title: Text(
                    'Lists',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.person_add_alt_outlined, 
                    color: Colors.black,
                  ),
                  title: Text(
                    'Twitter Circle',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            ForYou(),
            Following()
          ],
        ),
      ),
    );
  }
}

class ForYou extends StatefulWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  final data = [
    {
      'profile': 'assets/minggu9/p2.jpg',
      'name': 'Justinus Lhaksana',
      'username': '@CoachJustinL',
      'time': '7h',
      'tweet': "55🕺🕺🕺🕺🕺soon will be 56",
      'image': 'assets/minggu9/t2.jpg',
      'comment': '121',
      'retweet': '60',
      'like': '1,005'
    },
    {
      'profile': 'assets/minggu9/p3.jpg',
      'name': 'Paper Rex',
      'username': '@pprxteam',
      'time': '23h',
      'tweet': "Did you know that the banana is actually classified as a berry? A cluster of bananas is called a 'hand', while a single banana is called a 'finger'. Also, more songs have been written about bananas and they've been featured in our vlogs more than any other fruit.",
      'comment': '30',
      'retweet': '197',
      'like': '2,234'
    },
    {
      'profile': 'assets/minggu9/p1.jpg',
      'name': 'Trey',
      'username': '@UTDTrey',
      'time': '10h',
      'tweet': "Seeing a lot of talk about City's parade, let's talk a second to appreciate Arsenal's parade earlier in the season 👏",
      'image': 'assets/minggu9/t1.jpg',
      'comment': '423',
      'retweet': '1,615',
      'like': '21.8K'
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
              var tweet = data[index];
              return InkWell(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            tweet['profile'].toString()
                          )
                        ),
                      ),
                      title: Row(
                        children: [
                          Text(
                            tweet['name'].toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Expanded(
                            child: Text(
                              tweet['username'].toString(),
                              style: const TextStyle(
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Text(
                            tweet['time'].toString(),
                            style: const TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tweet['tweet'].toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15
                            ),
                          ),
                          const SizedBox(height: 8,),
                          if (tweet.containsKey('image'))
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                tweet['image'].toString(),
                              ),
                            ),
                          const SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.chat_bubble_outline,
                                    size: 13,
                                  ),
                                  const SizedBox(width: 3,),
                                  Text(
                                    tweet['comment'].toString(),
                                    style: const TextStyle(
                                      fontSize: 11
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.refresh_outlined,
                                    size: 13,
                                  ),
                                  const SizedBox(width: 3,),
                                  Text(
                                    tweet['retweet'].toString(),
                                    style: const TextStyle(
                                      fontSize: 11
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.favorite_outline,
                                    size: 13,
                                  ),
                                  const SizedBox(width: 3,),
                                  Text(
                                    tweet['like'].toString(),
                                    style: const TextStyle(
                                      fontSize: 11
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.share_outlined,
                                    size: 13,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {
                          showModalBottomSheet(
                            enableDrag: true,
                            context: context,
                            builder: (context) {
                              return Wrap(
                                children: [
                                  ListTile(
                                    leading: const Icon(
                                      Icons.sentiment_dissatisfied,
                                      color: Colors.black,
                                    ),
                                    title: const Text(
                                      'Not interested in this Tweet',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                  const Divider(),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.person_remove_outlined,
                                      color: Colors.black,
                                    ),
                                    title: Text(
                                      'Unfollow ${tweet['username']}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.format_list_bulleted_outlined,
                                      color: Colors.black,
                                    ),
                                    title: const Text(
                                      'Add/remove from Lists',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.volume_off_outlined,
                                      color: Colors.black,
                                    ),
                                    title: Text(
                                      'Mute ${tweet['username']}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.not_interested_outlined,
                                      color: Colors.black,
                                    ),
                                    title: Text(
                                      'Block ${tweet['username']}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                  const Divider(),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.flag_outlined,
                                      color: Colors.black,
                                    ),
                                    title: const Text(
                                      'Report Tweet',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                    const Divider()
                  ],
                ),
              );
            }
          )
        ]
      ),
    );
  }
}

class Following extends StatefulWidget {
  const Following({Key? key}) : super(key: key);

  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  final data = [
    {
      'profile': 'assets/minggu9/p4.jpg',
      'name': 'Gibran Rakabuming',
      'username': '@gibran_tweet',
      'time': '3h',
      'tweet': "Kalian ada yg punya dagangan di tiktok gak? Pernah kena shadow ban gak? 😭",
      'comment': '34',
      'retweet': '12',
      'like': '256'
    },
    {
      'profile': 'assets/minggu9/p4.jpg',
      'name': 'Gibran Rakabuming',
      'username': '@gibran_tweet',
      'time': '4h',
      'tweet': "Salah. Ngeyel",
      'comment': '224',
      'retweet': '284',
      'like': '4,003'
    },
    {
      'profile': 'assets/minggu9/p5.jpg',
      'name': 'Fabrizio Romano',
      'username': '@FabrizioRomano',
      'time': '6h',
      'tweet': "Understand Al Ittihad are finally confident to get N'Golo Kanté deal signed within the next 24 hours. Agreement reached last week, first part of medical done but still waiting on player/agents signature. 🚨🟡⚫️",
      'image': 'assets/minggu9/t5.jpeg',
      'comment': '561',
      'retweet': '3,471',
      'like': '36.2K'
    },
    {
      'profile': 'assets/minggu9/p6.jpg',
      'name': '⚡Favor⚡',
      'username': '@heyOnuoha',
      'time': '6h',
      'tweet': "So you want to become a fullstack developer ehh? 😂😂😂",
      'image': 'assets/minggu9/t6.png',
      'comment': '561',
      'retweet': '3,471',
      'like': '36.2K'
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
              var tweet = data[index];
              return InkWell(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            tweet['profile'].toString()
                          )
                        ),
                      ),
                      title: Row(
                        children: [
                          Text(
                            tweet['name'].toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Expanded(
                            child: Text(
                              tweet['username'].toString(),
                              style: const TextStyle(
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Text(
                            tweet['time'].toString(),
                            style: const TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tweet['tweet'].toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15
                            ),
                          ),
                          const SizedBox(height: 8,),
                          if (tweet.containsKey('image'))
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                tweet['image'].toString(),
                              ),
                            ),
                          const SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.chat_bubble_outline,
                                    size: 13,
                                  ),
                                  const SizedBox(width: 3,),
                                  Text(
                                    tweet['comment'].toString(),
                                    style: const TextStyle(
                                      fontSize: 11
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.refresh_outlined,
                                    size: 13,
                                  ),
                                  const SizedBox(width: 3,),
                                  Text(
                                    tweet['retweet'].toString(),
                                    style: const TextStyle(
                                      fontSize: 11
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.favorite_outline,
                                    size: 13,
                                  ),
                                  const SizedBox(width: 3,),
                                  Text(
                                    tweet['like'].toString(),
                                    style: const TextStyle(
                                      fontSize: 11
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.share_outlined,
                                    size: 13,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {
                          showModalBottomSheet(
                            enableDrag: true,
                            context: context,
                            builder: (context) {
                              return Wrap(
                                children: [
                                  ListTile(
                                    leading: const Icon(
                                      Icons.sentiment_dissatisfied,
                                      color: Colors.black,
                                    ),
                                    title: const Text(
                                      'Not interested in this Tweet',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                  const Divider(),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.person_remove_outlined,
                                      color: Colors.black,
                                    ),
                                    title: Text(
                                      'Unfollow ${tweet['username']}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.format_list_bulleted_outlined,
                                      color: Colors.black,
                                    ),
                                    title: const Text(
                                      'Add/remove from Lists',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.volume_off_outlined,
                                      color: Colors.black,
                                    ),
                                    title: Text(
                                      'Mute ${tweet['username']}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.not_interested_outlined,
                                      color: Colors.black,
                                    ),
                                    title: Text(
                                      'Block ${tweet['username']}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                  const Divider(),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.flag_outlined,
                                      color: Colors.black,
                                    ),
                                    title: const Text(
                                      'Report Tweet',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                    const Divider()
                  ],
                ),
              );
            }
          )
        ]
      ),
    );
  }
}