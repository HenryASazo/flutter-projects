import 'package:flutter/material.dart';

class PhoneSwitcher extends StatefulWidget {
  @override
  _PhoneSwitcherState createState() => _PhoneSwitcherState();
}

class _PhoneSwitcherState extends State<PhoneSwitcher>
    with SingleTickerProviderStateMixin {
  bool _isAndroid = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePhone(bool isAndroid) {
    setState(() {
      _isAndroid = isAndroid;
      if (_isAndroid) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Switcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              width: _isAndroid ? 250 : 350,
              height: _isAndroid ? 480 : 550,
              decoration: BoxDecoration(
                color: _isAndroid ? Colors.lightGreen : Colors.grey[900],
                borderRadius: _isAndroid
                    ? BorderRadius.circular(75)
                    : BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 1000),
                    top: _isAndroid ? 50 : 50,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        width: _isAndroid ? 100 : 70,
                        height: _isAndroid ? 50 : 20,
                        decoration: BoxDecoration(
                          color: _isAndroid ? Colors.lightGreen[800] : Colors.black54,
                          borderRadius: _isAndroid
                              ? BorderRadius.circular(25)
                              : BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 1000),
                    bottom: _isAndroid ? 50 : 50,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        width: _isAndroid ? 100 : 50,
                        height: _isAndroid ? 70 : 50,
                        decoration: BoxDecoration(
                          color: _isAndroid ? Colors.grey[500] : Colors.grey[500],
                          borderRadius: _isAndroid
                              ? BorderRadius.circular(25)
                              : BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      width: _isAndroid ? 200 : 300,
                      height: _isAndroid ? 550 : 1000,
                      child: Image.network(
                        _isAndroid ? 'https://res.cloudinary.com/practicaldev/image/fetch/s--H40ocFOu--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://res.cloudinary.com/nedy123/image/upload/v1560565889/Screenshot_2019-06-15_at_3.28.03_AM_hij9sw.png' :
                        'https://pics.craiyon.com/2023-06-28/549679bf60464fc19e9d1c02fa75eb1b.webp',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _togglePhone(true),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                  ),
                  child: Text('Android'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => _togglePhone(false),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text('iOS'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
