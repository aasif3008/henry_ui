import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Ui3 extends StatefulWidget {
  const Ui3({super.key});

  @override
  State<Ui3> createState() => _Ui3State();
}

class _Ui3State extends State<Ui3> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffebf4f4),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 32,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_2x2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: '',
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  // begin: Alignment.topRight,
                  // end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff850168),
                    Color(0xffbf0160),
                  ]),
            ),
          ),
          const Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'Welcome to',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          'Henry Harvin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white),
                        ),
                        // const SizedBox(height: 16),
                        // searchBar()
                      ],
                    ),
                  )),
              Expanded(
                flex: 4,
                child: Card(
                  margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  elevation: 4,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(),

                      //////////////////////////
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
