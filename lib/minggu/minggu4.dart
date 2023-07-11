import 'package:flutter/material.dart';

class Minggu4 extends StatefulWidget {
  const Minggu4({Key? key}) : super(key: key);

  @override
  State<Minggu4> createState() => _Minggu4State();
}

enum TransactionType {
  transfer,
  topUp,
}

class _Minggu4State extends State<Minggu4> {
  String nama = 'JECKSEN SANTOKO';
  double saldo = 2000000;
  double value = 0;
  bool transferButton = false;
  bool topUpButton = false;
  List<Map<String, dynamic>> historyList = [];

  void subtractValue() {
    setState(() {
      if (value > 0) {
        value -= 10000;
      }
    });
  }

  void addValue() {
    setState(() {
      value += 10000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8D7B68),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/minggu4/profile.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Color(0xFF8D7B68),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Selamat Datang,',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  nama,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                      color: Color(0xFFA4907C),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Rp',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1),
                          ),
                          Text(
                            formatRupiah(saldo),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                height: 0.9),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Total Saldo',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            height: 1),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(
                  color: Color(0xFFB99B6B),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                ),
                child: Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.add_circle_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          topUpButton = !topUpButton;
                          transferButton = false;
                          value = 0;
                        });
                      },
                    ),
                    const Text(
                      'Top Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          height: 0.8),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 0.5,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(
                    color: Color(0xFFB99B6B),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          transferButton = !transferButton;
                          topUpButton = false;
                          value = 0;
                        });
                      },
                    ),
                    const Text(
                      'Transfer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          height: 0.8),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (topUpButton == true && transferButton == false)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              decoration: const BoxDecoration(
                  color: Color(0xFFF4EEE0),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Top Up',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: subtractValue,
                        icon: const Icon(Icons.remove_circle),
                        color: value == 0 ? Colors.grey : Colors.red,
                        iconSize: 40,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Rp',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 1),
                          ),
                          Text(
                            formatRupiah(value),
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: addValue,
                        icon: const Icon(Icons.add_circle),
                        color: Colors.green,
                        iconSize: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          setState(() {
                            topUpButton = !topUpButton;
                            value = 0;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              elevation: 0,
                              backgroundColor: Color(0xFFFFDEDE),
                              content: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                title: Text(
                                  'Error',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                subtitle: Text(
                                  'Gagal melakukan Top Up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Batal',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          setState(() {
                            saldo += value;
                            topUpButton = !topUpButton;
                            historyList.insert(0, {
                              'type': TransactionType.topUp,
                              'value': value,
                            });
                            value = 0;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              elevation: 0,
                              backgroundColor: Color(0xFFC7E8CA),
                              content: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                title: Text(
                                  'Success',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                subtitle: Text(
                                  'Berhasil melakukan Top Up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Bayar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          if (transferButton == true && topUpButton == false)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              decoration: const BoxDecoration(
                  color: Color(0xFFF4EEE0),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Transfer',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: subtractValue,
                        icon: const Icon(Icons.remove_circle),
                        color: value == 0 ? Colors.grey : Colors.red,
                        iconSize: 40,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Rp',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 1),
                          ),
                          Text(
                            formatRupiah(value),
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: addValue,
                        icon: const Icon(Icons.add_circle),
                        color: Colors.green,
                        iconSize: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          setState(() {
                            transferButton = !transferButton;
                            value = 0;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              elevation: 0,
                              backgroundColor: Color(0xFFFFDEDE),
                              content: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                title: Text(
                                  'Error',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                subtitle: Text(
                                  'Uang gagal di Transfer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Batal',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          setState(() {
                            saldo -= value;
                            transferButton = !transferButton;
                            historyList.insert(0, {
                              'type': TransactionType.transfer,
                              'value': value,
                            });
                            value = 0;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              elevation: 0,
                              backgroundColor: Color(0xFFC7E8CA),
                              content: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                title: Text(
                                  'Success',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                subtitle: Text(
                                  'Uang berhasil di Transfer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Kirim',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ElevatedButton(
            onPressed: () {
              _showHistoryModal(context, historyList);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00A9FF),
            ),
            child: const Text('SHOW HISTORY'),
          ),
        ],
      ),
    );
  }
}

String formatRupiah(double saldo) {
  String saldoString = saldo.toInt().toString();
  String formattedString = '';

  int index = 0;
  for (int i = saldoString.length - 1; i >= 0; i--) {
    if (index > 0 && index % 3 == 0) {
      formattedString = '.' + formattedString;
    }
    formattedString = saldoString[i] + formattedString;
    index++;
  }

  return formattedString;
}

void _showHistoryModal(
    BuildContext context, List<Map<String, dynamic>> historyList) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30)
      )
    ),
    builder: (BuildContext context) {
      return Column(
        children: <Widget>[
          const Text(
            'HISTORY',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: historyList.length,
              itemBuilder: (BuildContext context, int index) {
                TransactionType type = historyList[index]['type'];
                Color backgroundColor;
                String tipe;
                if (type == TransactionType.transfer) {
                  backgroundColor = Colors.red;
                  tipe = 'TRANSFER';
                } else if (type == TransactionType.topUp) {
                  backgroundColor = Colors.green;
                  tipe = 'TOP UP';
                } else {
                  backgroundColor = Colors.transparent;
                  tipe = '';
                }

                return Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.black,
                  ))),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: ListTile(
                    leading: Icon(
                      Icons.swap_horiz,
                      color: backgroundColor,
                      size: 40,
                    ),
                    title: Row(
                      children: [
                        const Text(
                          'Rp.',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          formatRupiah(historyList[index]['value']),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    trailing: Container(
                      width: 71,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3, vertical: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: backgroundColor),
                      child: Text(
                        tipe,
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    },
  );
}