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
        appBar: AppBar(
          title: _logo(),
          centerTitle: false,
          backgroundColor: Color.fromARGB(255, 8, 198, 231),
          actions: [
            IconButton(onPressed: () => {}, icon: ImageIcon(
              AssetImage('assets/images/profileicon.png'),size: 48,)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.cyanAccent,
            unselectedItemColor: Colors.cyan,
            selectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/homebuttonicon.png'),
                size: 48.0,
                color: Colors.cyan,),
                label: "Home"
              )
              ,
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/MerchantEyes icons.png'),
                  size: 48.0,
                  color: Colors.cyan,
                ),
                label: "Trade",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/stock.png'),
                  size: 48.0,
                  color: Colors.cyan,
                ),
                label: "Stock",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/insights.png'),
                  size: 48.0,
                  color: Colors.cyan,
                ),
                label: "Insights",
              )
            ]));
  }

  Widget _logo() {
    return Image.asset('assets/images/MerchantEyes icons-02.png',fit: BoxFit.cover,height: 155,);
  }
}

// ignore: camel_case_types
class logotitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Merchant Eyes",
          style: TextStyle(
            fontSize: 30,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ],
    );
  }
}
