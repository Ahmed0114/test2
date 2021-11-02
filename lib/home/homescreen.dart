import 'package:flutter/material.dart';
import 'package:test2/home/ahades/ahades_tab.dart';
import 'package:test2/home/quran/quran_tab.dart';
import 'package:test2/home/radio/radio.dart';
import 'package:test2/home/tasbeh/tasbeh.dart';
import 'package:test2/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
int current=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset('assets/images/main_background.png'),
          Scaffold(
            appBar: AppBar(
              title: Center(child: Text('islami')),
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: themedata.primaryColor),
              child: BottomNavigationBar(
                currentIndex: current,
                onTap: (index){
                  current=index;
                  setState(() {

                  });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/Icon awesome-quran.png')),
                      label:'quran'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/Icon awesome-quran.png')),
                      label:'ahades'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/Icon awesome-quran.png')),
                      label:'sebha'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/Icon awesome-quran.png')),
                      label:'radio'),
                ],
              ),
            ),
            body:Container(
              child: views[current],

            ),
          ),
        ],

    );
  }
  List<Widget>views=[
    quran(),
    tasbeh(),
    ahades(),
    radio(),
  ]
}
