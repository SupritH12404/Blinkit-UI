import 'package:flutter/material.dart';
import 'package:untitled/blinkil_clone_app/repository/widgets/uihelper.dart';

class Categoryscreen extends StatelessWidget {
 final TextEditingController _searchcontroller = TextEditingController();
  var grocerykitchen = [
    {"img": "g.png", "text": "Vegetables & \nFruits"},
    {"img": "gr.png", "text": "Atta, Dal & \nRice"},
    {"img": "gro.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "groc.png", "text": "Dairy, Bread & \nMikl"},
    {"img": "groce.png", "text": "Biscuits & \nBakery"},
  ];
   var secondgrocery = [
    {"img": "grocer.png", "text": "Dry, Fruits & \nCereals"},
    {"img": "grocery.png", "text": "Kitchen & \nAppliances"},
    {"img": "grocery1.png", "text": "Tea & \nCoffees"},
    {"img": "grocery2.png", "text": "Noodles & \nPacket Food"},
    {"img": "icecream.png", "text": "Ice Creams & \nmuch more"},
   ];
   var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"}
  ];
  var hosuehold = [
    {"img": "image 36.png"},
    {"img": "image 37.png"},
    {"img": "image 38.png"},
    {"img": "image 39.png"},
    {"img": "image 40.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
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
                  child: UIHelper.customtextfield(controller: _searchcontroller, text: "Search 'ice-cream'",))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UIHelper.customText(
                  text: "Grocery & Kitchen",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 15,)
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UIHelper.customImage(
                              img: grocerykitchen[index]["img"].toString()),
                        ),
                      ),
                      UIHelper.customText(
                          text: grocerykitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UIHelper.customImage(
                              img: secondgrocery[index]["img"].toString()),
                        ),
                      ),
                      UIHelper.customText(
                          text: secondgrocery[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: secondgrocery.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UIHelper.customText(
                  text: "Snacks & Drinks",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 15),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UIHelper.customImage(
                              img: snacksanddrinks[index]["img"].toString()),
                        ),
                      ),
                      UIHelper.customText(
                          text: snacksanddrinks[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UIHelper.customText(
                  text: "Household Essentials",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 15)
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 78,
                      width: 71,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB)),
                      child: UIHelper.customImage(
                          img: hosuehold[index]["img"].toString()),
                    ),
                  );
                },
                itemCount: hosuehold.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}