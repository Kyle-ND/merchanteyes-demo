import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "First App",
      home: MyHome(),
    );
  }
}

// ignore: camel_case_types
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: logotitle(),
      centerTitle: false,
      backgroundColor: Color.fromARGB(255, 8, 198, 231),
      actions: [ IconButton(onPressed: () => {}, icon: Icon(Icons.person)),],),
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.cyanAccent,
      unselectedItemColor: Colors.cyan,
      selectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",),
        BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: "Search",),
        BottomNavigationBarItem(
        icon: Icon(Icons.task),
        label: "Stock",),
        BottomNavigationBarItem(
        icon: Icon(Icons.analytics),
        label: "Insights",)
      ])
    );
  }
}

// ignore: camel_case_types
class logotitle extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("Merchant Eyes",
       style: TextStyle(
        fontSize: 30,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = Color.fromARGB(255, 0, 0, 0)!,
      ),),],
    );
  }
}