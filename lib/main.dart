import 'package:flutter/material.dart';
//class Homepage extends StatelaessWidget{}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void onPress() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home page"),
          backgroundColor: Colors.blue,
          leading: IconButton(onPressed: onPress, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: onPress, icon: const Icon(Icons.search)),
            IconButton(onPressed: onPress, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Image.asset(
            "assets/images/abc.jpg",
            fit: BoxFit.fill,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
            backgroundColor: Colors.blue,


        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(
                Icons.settings,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(
              Icons.favorite,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],




            ),
      ),
    );
  }
}