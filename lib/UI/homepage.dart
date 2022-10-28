import 'package:flutter/material.dart';
import 'package:rumahpetani/UI/PetaniPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Halaman Home"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 156, 231, 231),
        currentIndex: 0,
        onTap: (i) {
          switch (i) {
            case 0:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext contect) => HomePage()));
              break;
            case 1:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext contect) => PetaniPage()));
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: ("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_rounded),
              label: ("Petani")),
        ],
      ),
    );
  }
}
