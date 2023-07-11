import 'package:flutter/material.dart';

class Minggu12 extends StatefulWidget {
  const Minggu12({Key? key}) : super(key: key);

  @override
  State<Minggu12> createState() => _Minggu12State();
}

class _Minggu12State extends State<Minggu12> {
  final List<ForYouData> forYouDataList1 = [
    ForYouData(
      image: 'assets/minggu12/d1.jpeg',
      text: 'Yuuri, YOASOBI, yama and more',
    ),
    ForYouData(
      image: 'assets/minggu12/d2.jpeg',
      text: 'Tulus, Arash Buana, Yura Yunita and more',
    ),
    ForYouData(
      image: 'assets/minggu12/d3.jpeg',
      text: 'Jack Johnson, American Authors, Train and more',
    ),
    ForYouData(
      image: 'assets/minggu12/d4.jpeg',
      text: 'NewJeans, FIFTY FIFTY, TOMORROW X TOGETHER and more',
    ),
    ForYouData(
      image: 'assets/minggu12/d5.jpeg',
      text: 'The Killers, WALK THE MOON, The All-American Rejects and more',
    ),
  ];

  final List<ForYouData> forYouDataList2 = [
    ForYouData(
      image: 'assets/minggu12/a1.jpeg',
      text: 'Mahalini, Tulus, Tiara Andini, Anggi Marito, Puncak Klasemen',
    ),
    ForYouData(
      image: 'assets/minggu12/a2.jpeg',
      text: 'Rizky Febian, Mahalini, Tiara Andini, Anggi Marito',
    ),
    ForYouData(
      image: 'assets/minggu12/a3.jpeg',
      text: 'Mahalini, Tiara Andini, NIKI, Anggi Marito, Lyora',
    ),
    ForYouData(
      image: 'assets/minggu12/a4.jpeg',
      text: 'Mahalini, Tiara Andini, Anggi Marito, Virgoun',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Good morning',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 18,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          cardRecent(
                              'assets/minggu12/r1.jpeg',
                              'Puncak Klasemen Mempersembahkan'),
                          cardRecent(
                              'assets/minggu12/r2.jpeg',
                              'Hot Hits Indonesia'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          cardRecent(
                              'assets/minggu12/r3.jpg',
                              'Top 50 - Indonesia'),
                          cardRecent(
                              'assets/minggu12/r4.jpeg',
                              'Yuuri'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          cardRecent(
                              'assets/minggu12/r5.jpeg',
                              'Daily Mix 1'),
                          cardRecent(
                              'assets/minggu12/r6.jpeg',
                              'Lagi Viral'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Made For Pieter Vardi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  ForYou(dataList: forYouDataList1),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/minggu12/p1.jpeg'),
                    ),
                    title: Text(
                      'MORE LIKE',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey
                      ),
                    ),
                    subtitle: Text(
                      'Anggi Marito',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  ForYou(dataList: forYouDataList2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Card cardRecent(String img, String text) {
  return Card(
    color: Colors.grey[900],
    child: SizedBox(
      width: 170,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
            child: Image(
              width: 50,
              height: 50,
              image: AssetImage(img),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 5, 25, 8),
              child: Text(
                text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class ForYou extends StatelessWidget {
  final List<ForYouData> dataList;

  const ForYou({Key? key, required this.dataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 190.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          final ForYouData data = dataList[index];
          return Row(
            children: [
              ForYouCard(data: data),
              const SizedBox(width: 12,)
            ],
          );
        },
      ),
    );
  }
}

class ForYouData {
  final String image;
  final String text;

  ForYouData({required this.image, required this.text});
}

class ForYouCard extends StatelessWidget {
  final ForYouData data;

  const ForYouCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: 130,
          height: 130,
          image: AssetImage(data.image),
        ),
        const SizedBox(height: 10,),
        SizedBox(
          width: 130,
          child: Text(
            data.text,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}