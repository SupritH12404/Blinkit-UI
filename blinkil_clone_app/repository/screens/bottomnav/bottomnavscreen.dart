import 'package:flutter/material.dart';
import 'package:untitled/blinkil_clone_app/repository/screens/cart/cartscreen.dart';
import 'package:untitled/blinkil_clone_app/repository/screens/category/categoryscreen.dart';
import 'package:untitled/blinkil_clone_app/repository/screens/home/homescreen.dart';
import 'package:untitled/blinkil_clone_app/repository/screens/print/printscreen.dart';
import 'package:untitled/blinkil_clone_app/repository/widgets/uihelper.dart';


class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentindex = 0;
  List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    Categoryscreen(),
    Printscreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentindex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: UIHelper.customImage(img: 'home.png'),label: "Home"),
        BottomNavigationBarItem(icon: UIHelper.customImage(img: 'shoppingbag.png'),label: "Cart"),
        BottomNavigationBarItem(icon: UIHelper.customImage(img: 'category.png'),label: "Category"),
        BottomNavigationBarItem(icon: UIHelper.customImage(img: 'printer.png'),label: "Print"),
      ],type: BottomNavigationBarType.fixed,currentIndex: currentindex,onTap: (index){
        setState(() {
          currentindex = index;
        });
      },)
    );
  }
}