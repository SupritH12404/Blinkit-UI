import 'package:flutter/material.dart';

class UIHelper {
  static customImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static customText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontWeight: fontweight,
          color: color),
    );
  }
  static customtextfield({required TextEditingController controller, required String text}){
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFC5C5C5)
        )
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'ice-cream'",
          prefixIcon: Image.asset('assets/images/search2.png'),
          suffixIcon: Image.asset('assets/images/mic.png'),
          border: InputBorder.none
        ),
      ),
    );
  }
  static custombutton(VoidCallback callback){
    return Container(
      height: 18,
      width: 32,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xFF27AF34))
      ),
      child: Center(
        child: Text("ADD",style: TextStyle(fontSize: 8,color: Color(0xFF27AF24)),),
      ),
    );
  }
}