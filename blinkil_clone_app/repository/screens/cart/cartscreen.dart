import 'package:flutter/material.dart';
import 'package:untitled/blinkil_clone_app/repository/widgets/uihelper.dart';

class Cartscreen extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UIHelper.customText(
                            text: "Blinkit in",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 15),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UIHelper.customText(
                            text: "16 minutes",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 20,)
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UIHelper.customText(
                            text: "HOME ",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14),
                        UIHelper.customText(
                            text: "- Suprit Rana,Ballabgarh,Faridabad",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14)
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              Positioned(
                  bottom: 30,
                  left: 20,
                  child: UIHelper.customtextfield(controller: searchcontroller, text: "Search 'ice-cream'",))
            ],
          ),
          SizedBox(height: 20),
          UIHelper.customImage(img: 'shoppingcart.png'),
          UIHelper.customText(
            text: "Reordering will be easy",
            color: Color(0xFF000000),
            fontweight: FontWeight.bold,
            fontsize: 16,
          ),
          UIHelper.customText(
            text: "Items you order will show up here so you can buy",
            color: Color(0xFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          UIHelper.customText(
            text: "them again easily",
            color: Color(0xFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UIHelper.customText(
                text: "Bestsellers",
                color: Color(0xFF000000),
                fontweight: FontWeight.bold,
                fontsize: 17,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Stack(
                children: [
                  UIHelper.customImage(img: 'milk.png'),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(top: 95, left: 65),
                      child: UIHelper.custombutton(() {}),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Stack(
                children: [
                  UIHelper.customImage(img: 'potato.png'),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(top: 95, left: 65),
                      child: UIHelper.custombutton(() {}),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Stack(
                children: [
                  UIHelper.customImage(img: 'tomato.png'),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(top: 95, left: 65),
                      child: UIHelper.custombutton(() {}),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
