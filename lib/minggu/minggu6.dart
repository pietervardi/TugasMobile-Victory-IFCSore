import 'package:flutter/material.dart';

class Minggu6 extends StatefulWidget {
  const Minggu6({Key? key}) : super(key: key);

  @override
  State<Minggu6> createState() => _Minggu6State();
}

class _Minggu6State extends State<Minggu6> {
  bool reconnect = true;

  String ipSelected = 'DHCP';
  List ip = [
    'DHCP',
    'Static'
  ];

  String proxySelected = 'None';
  List proxy = [
    'None',
    'Manual',
    'Auto-config'
  ];

  String networkSelected = 'Detect automatically';
  List network = [
    'Detect automatically',
    'Treat as metered',
    'Treat as unmetered'
  ];

  String macSelected = 'Randomized MAC';
  List mac = [
    'Randomized MAC',
    'Phone MAC',
  ];

  @override
  Widget build(BuildContext context) {
    Color textColor = const Color(0xFFADADAD);
    Color backgroundColor = Colors.grey[900]!.withOpacity(1.0);


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
              'WIFI SETTINGS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),
            )
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Center(
            child: Column(
              children: [
                const Text(
                  'MIKROSKIL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 5),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.wifi_rounded,
                      color: Colors.blue,
                      size: 35,
                    ),
                  ),
                ),
                Text(
                  'Connected',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 25,),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[900]!.withOpacity(1.0),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.speed,
                          color: textColor,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          'Network speed',
                          style: TextStyle(
                            color: textColor
                          ),
                        )
                      ],
                    ),
                    const Text(
                      '65 Mbps',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.security,
                          color: textColor,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          'Security',
                          style: TextStyle(
                            color: textColor
                          ),
                        )
                      ],
                    ),
                    const Text(
                      'WPA/WPA2-Personal',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.language,
                          color: textColor,
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          'IP address',
                          style: TextStyle(
                            color: textColor
                          ),
                        )
                      ],
                    ),
                    const Text(
                      '150.102.68.69',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[900]!.withOpacity(1.0),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Auto reconnect',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
                Switch(
                  thumbColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.white.withOpacity(.48);
                    }
                    return Colors.white;
                  }),
                  value: reconnect, 
                  onChanged: (bool val) {
                    setState(() {
                      reconnect = val;
                    });
                  }
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[900]!.withOpacity(1.0),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'IP settings',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      ipSelected,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                DropdownButton(
                  items: ip.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(
                        item, 
                        style: const TextStyle(
                          color: Colors.white
                        ),
                      ),
                    );
                  }).toList(),
                  value: ipSelected,
                  onChanged: (val) {
                    setState(() {
                      ipSelected = val as String;
                    });
                  },
                  dropdownColor: backgroundColor,
                  underline: const SizedBox.shrink()
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[900]!.withOpacity(1.0),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Proxy',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      proxySelected,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                DropdownButton(
                  items: proxy.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(
                        item, 
                        style: const TextStyle(
                          color: Colors.white
                        ),
                      ),
                    );
                  }).toList(),
                  value: proxySelected,
                  onChanged: (val) {
                    setState(() {
                      proxySelected = val as String;
                    });
                  },
                  dropdownColor: backgroundColor,
                  underline: const SizedBox.shrink()
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[900]!.withOpacity(1.0),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Metered network',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          networkSelected,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    DropdownButton(
                      items: network.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(
                            item, 
                            style: const TextStyle(
                              color: Colors.white
                            ),
                          ),
                        );
                      }).toList(),
                      value: networkSelected,
                      onChanged: (val) {
                        setState(() {
                          networkSelected = val as String;
                        });
                      },
                      dropdownColor: backgroundColor,
                      underline: const SizedBox.shrink()
                    ),
                  ],
                ),
                Divider(color: textColor,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'MAC address type',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          macSelected,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    DropdownButton(
                      items: mac.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(
                            item, 
                            style: const TextStyle(
                              color: Colors.white
                            ),
                          ),
                        );
                      }).toList(),
                      value: macSelected,
                      onChanged: (val) {
                        setState(() {
                          macSelected = val as String;
                        });
                      },
                      dropdownColor: backgroundColor,
                      underline: const SizedBox.shrink()
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}