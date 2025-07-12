import 'package:flutter/material.dart';
import 'package:untitled/blinkil_clone_app/repository/widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  final TextEditingController _searchcontroller = TextEditingController();

  var data = [
    {"img": "image 50.png", "text": "Lights,Diyas \n& Candels"},
    {"img": "image 51.png", "text": "Diwali \nGift"},
    {"img": "image 52.png", "text": "Appliances & \nGadgets"},
  ];

  var data2 = [
    {"img": "image 54.png", "text": "Golden Glass \nWooden Lid Candle (Oudh)"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun \nBy Bikano"},
    {"img": "image 63.png", "text": "Bikaji Bhujia \nby Haldirams"},
  ];

  var grocerykitchen = [
    {"img": "g.png", "text": "Vegetables & \nFruits"},
    {"img": "gr.png", "text": "Atta, Dal & \nRice"},
    {"img": "gro.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "groc.png", "text": "Dairy, Bread & \nMikl"},
    {"img": "groce.png", "text": "Biscuits & \nBakery"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0XFFEC0505),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UIHelper.customText(
                          text: "Blinkit in",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UIHelper.customText(
                          text: "16 minutes",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UIHelper.customText(
                          text: "HOME ",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                        UIHelper.customText(
                          text: "- Suprit Rana,Ballabgarh,Faridabad",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
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
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white, size: 20),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: UIHelper.customtextfield(
                  controller: _searchcontroller,
                  text: "Search 'ice-cream'",
                ),
              ),
            ],
          ),
          Container(height: 1, width: double.infinity, color: Colors.white),
          Container(
            height: 215,
            width: double.infinity,
            color: Color(0XFFEC0505),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UIHelper.customImage(img: "image 60.png"),
                    UIHelper.customImage(img: "image 55.png"),
                    UIHelper.customText(
                      text: "Mega Diwali Sale",
                      color: Colors.white,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                    ),
                    UIHelper.customImage(img: "image 60.png"),
                    UIHelper.customImage(img: "image 55.png"),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 135,
                                width: 115,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFEAD3D3),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10),
                                    UIHelper.customText(
                                      text: data[index]["text"].toString(),
                                      color: Colors.black,
                                      fontweight: FontWeight.normal,
                                      fontsize: 12,
                                    ),
                                    SizedBox(height: 5),
                                    UIHelper.customImage(
                                      img: data[index]["img"].toString(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 108,
                          width: 93,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UIHelper.customImage(
                            img: data2[index]["img"].toString(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsGeometry.only(left: 20),
                        child: UIHelper.customText(
                          text: data2[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 8,
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            UIHelper.customImage(img: "timer 1.png"),
                            UIHelper.customText(
                              text: "16 minutes",
                              color: Color(0xFF9C9C9C),
                              fontweight: FontWeight.normal,
                              fontsize: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            UIHelper.customImage(img: "image 47.png"),
                            UIHelper.customText(
                              text: "79",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                itemCount: data2.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 25),
              UIHelper.customText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 15,
              ),
            ],
          ),
          Expanded(
            flex: 1,
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
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UIHelper.customImage(
                            img: grocerykitchen[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UIHelper.customText(
                        text: grocerykitchen[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}