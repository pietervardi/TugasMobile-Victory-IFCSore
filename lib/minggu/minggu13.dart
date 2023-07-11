import 'package:flutter/material.dart';

class Minggu13 extends StatefulWidget {
  const Minggu13({Key? key}) : super(key: key);

  @override
  State<Minggu13> createState() => _Minggu13State();
}

class _Minggu13State extends State<Minggu13> {
  double _progressValue = 0.7;
  bool _isPlaying = false;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Player'),
        elevation: 0,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff388cd0),
              Color(0xff732484),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: GradientRotation(45),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Image.network(
                        'https://cdn.keepo.me/images/post/lists/2020/06/10/main-list-image-94dcc7e0-1ac2-46cb-80c2-b7bc04b34ba9-1.jpg',
                        width: 300,
                        height: 400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Text(
                          'Sparkle - RADWIMPS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '(Ost. Kimi no Na wa)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Slider(
              value: _progressValue,
              onChanged: (double value) {
                setState(() {
                  _progressValue = value;
                });
              },
              activeColor: Colors.white,
              inactiveColor: Colors.grey[400],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1:30',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    '4:15',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Tooltip(
                  message: 'Previous',
                  child: Icon(
                    Icons.skip_previous,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isPlaying = !_isPlaying;
                      _isLoading =
                          true;
                    });

                    Future.delayed(const Duration(seconds: 2), () {
                      setState(() {
                        _isLoading = false;
                      });
                    });
                  },
                  child: _isLoading
                    ? const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      )
                    : Icon(
                        _isPlaying
                          ? Icons.pause_circle_filled
                          : Icons.play_circle_filled,
                        size: 80,
                        color: Colors.white,
                      ),
                ),
                const Tooltip(
                  message: 'Next',
                  child: Icon(
                    Icons.skip_next,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
