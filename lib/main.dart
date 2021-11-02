import 'package:flutter/material.dart';
import 'package:test2/home/homescreen.dart';
void main() {
runApp(myapp());
}
class themedata{
  static const Color primaryColor= Color.fromARGB(255, 170, 118, 66);
  static final ThemeData lightTheme=ThemeData(
      scaffoldBackgroundColor:Colors.transparent,
      primaryColor: themedata.primaryColor,

      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 100,
          ),
      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,

  ),
  );

}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      title: 'rengkjb',
      theme: themedata.lightTheme ,
    );
  }
}




