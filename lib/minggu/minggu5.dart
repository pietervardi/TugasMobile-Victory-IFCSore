import 'package:flutter/material.dart';

class Minggu5 extends StatefulWidget {
  const Minggu5({Key? key}) : super(key: key);

  @override
  State<Minggu5> createState() => _Minggu5State();
}

class _Minggu5State extends State<Minggu5> {
  bool isDarkMode = true;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  bool? pangkas = false;
  bool? pijat = false;
  bool? pedi = false;
  int? harpang = 0;
  String? models = 'none';
  int total = 0;
  int harpij = 0;
  int harped = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pangkas Ahua'),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              ChoiceChip(
                label: isDarkMode
                    ? const Icon(Icons.dark_mode)
                    : const Icon(Icons.light_mode),
                backgroundColor: isDarkMode ? Colors.black : Colors.white,
                selectedColor: isDarkMode ? Colors.black : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    color: isDarkMode ? Colors.white : Colors.black,
                    width: 3.0,
                  ),
                ),
                onSelected: (isSelected) => toggleTheme(),
                selected: isDarkMode,
              ),
              const SizedBox(height: 20,),
              Column(
                children: [
                  CheckboxListTile(
                      value: pangkas,
                      title: const Text('Pangkas'),
                      onChanged: (val) {
                        setState(() {
                          pangkas = val;
                        });
                      }),
                  if (pangkas == true)
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(children: [
                        RadioListTile(
                            value: 'Botak',
                            groupValue: models,
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  'https://media.istockphoto.com/id/147486873/photo/a-rear-view-of-a-mans-bald-head.jpg?s=612x612&w=0&k=20&c=VPqxiZ2cfDj4j0XNMXpRrvrc6IyeZ5aoCDAQdBdzGLs=',
                                  width: 150,
                                  height: 150,
                                ),
                                const Text('Botak')
                              ],
                            ),
                            onChanged: (value) {
                              setState(() {
                                models = value;
                                total = 0;
                                if (pedi == true) {
                                  total += 20000;
                                }
                                if (pijat == true) {
                                  total += 10000;
                                }
                                if (models == 'Botak') {
                                  total += 15000;
                                } else if (models == 'ikal') {
                                  total += 18000;
                                } else if (models == 'Oppa') {
                                  total += 20000;
                                } else if (models == 'Samping') {
                                  total += 12000;
                                }
                              });
                            }),
                        RadioListTile(
                            value: 'ikal',
                            groupValue: models,
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  'https://ath2.unileverservices.com/wp-content/uploads/sites/10/2022/06/09120143/Timothee-Chalamet-eboy-menzpov.jpg',
                                  width: 150,
                                  height: 150,
                                ),
                                const Text('Ikal')
                              ],
                            ),
                            onChanged: (value) {
                              setState(() {
                                models = value;
                                total = 0;
                                if (pedi == true) {
                                  total += 20000;
                                }
                                if (pijat == true) {
                                  total += 10000;
                                }
                                if (models == 'Botak') {
                                  total += 15000;
                                } else if (models == 'ikal') {
                                  total += 18000;
                                } else if (models == 'Oppa') {
                                  total += 20000;
                                } else if (models == 'Samping') {
                                  total += 12000;
                                }
                              });
                            }),
                        RadioListTile(
                            value: 'Oppa',
                            groupValue: models,
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  'https://menshairstyletips.com/wp-content/uploads/2020/11/5-Korean-Hairstyle-Men.jpg?ezimgfmt=rs:372x462/rscb1/ngcb1/notWebP',
                                  width: 150,
                                  height: 150,
                                ),
                                const Text('Oppa Oppa korea')
                              ],
                            ),
                            onChanged: (value) {
                              setState(() {
                                models = value;
                                total = 0;
                                if (pedi == true) {
                                  total += 20000;
                                }
                                if (pijat == true) {
                                  total += 10000;
                                }
                                if (models == 'Botak') {
                                  total += 15000;
                                } else if (models == 'ikal') {
                                  total += 18000;
                                } else if (models == 'Oppa') {
                                  total += 20000;
                                } else if (models == 'Samping') {
                                  total += 12000;
                                }
                              });
                            }),
                        RadioListTile(
                            value: 'Samping',
                            groupValue: models,
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  'https://www.tezzen.com/wp-content/uploads/2019/11/Thumbnail-Flat_Top_Haircut-530x640.jpg',
                                  width: 150,
                                  height: 150,
                                ),
                                const Text('Pangkas Samping')
                              ],
                            ),
                            onChanged: (value) {
                              setState(() {
                                models = value;
                                total = 0;
                                if (pedi == true) {
                                  total += 20000;
                                }
                                if (pijat == true) {
                                  total += 10000;
                                }
                                if (models == 'Botak') {
                                  total += 15000;
                                } else if (models == 'ikal') {
                                  total += 18000;
                                } else if (models == 'Oppa') {
                                  total += 20000;
                                } else if (models == 'Samping') {
                                  total += 12000;
                                }
                              });
                            }),
                      ]),
                    ),
                  CheckboxListTile(
                      value: pijat,
                      title: const Text('Pijat'),
                      onChanged: (val) {
                        setState(() {
                          pijat = val;
                          total = 0;
                          if (pedi == true) {
                            total += 20000;
                          }
                          if (pijat == true) {
                            total += 10000;
                          }
                          if (models == 'Botak') {
                            total += 15000;
                          } else if (models == 'ikal') {
                            total += 18000;
                          } else if (models == 'Oppa') {
                            total += 20000;
                          } else if (models == 'Samping') {
                            total += 12000;
                          }
                        });
                      }),
                  CheckboxListTile(
                      value: pedi,
                      title: const Text('Pedicure'),
                      onChanged: (val) {
                        setState(() {
                          pedi = val;
                          total = 0;
                          if (pedi == true) {
                            total += 20000;
                          }
                          if (pijat == true) {
                            total += 10000;
                          }
                          if (models == 'Botak') {
                            total += 15000;
                          } else if (models == 'ikal') {
                            total += 18000;
                          } else if (models == 'Oppa') {
                            total += 20000;
                          } else if (models == 'Samping') {
                            total += 12000;
                          }
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.teal[500],
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            color: Colors.teal[500],
            child: Text(
              'Total  : Rp. $total',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    );
  }
}