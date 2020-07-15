import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:trello/utils/margins.dart';
import 'package:trello/utils/theme.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth(0.25),
      padding: EdgeInsets.symmetric(vertical: 35),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SpaceY(
                      y: 5
                    ),
                    Text(
                      "Robert",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/avatars1.png"),
                          fit: BoxFit.cover
                        ),
                        
                      ),
                    ),
                    SpaceY(y: 8),
                    Icon(FeatherIcons.moreVertical)
                  ],
                )
              ],
            ),
          ),
          spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total Projects",
                          style: TextStyle(
                            color: greyBackground,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        SpaceY(
                          y: 8,
                        ),
                        Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 45.0,
                              lineWidth: 3.0,
                              percent: 0.49,
                              reverse: true,
                              animation: true,
                              // center: new Text("10%"),
                              progressColor: yellow,
                            ),
                            SpaceX(x: 8),
                            Text(
                              "177",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SpaceX(x: 100),
                    Column(
                      children: [
                        Text(
                          "Completed",
                          style: TextStyle(
                            color: greyBackground,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        SpaceY(y: 8),
                        Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 45.0,
                              lineWidth: 3.0,
                              percent: 0.49,
                              reverse: true,
                              animation: true,
                              // center: new Text("10%"),
                              progressColor: teal,
                            ),
                            SpaceX(x: 8),
                            Text(
                              "180",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SpaceY(y: 20),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "In progress",
                          style: TextStyle(
                            color: greyBackground,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        SpaceY(y: 8),
                        Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 45.0,
                              lineWidth: 3.0,
                              percent: 0.49,
                              reverse: true,
                              animation: true,
                              // center: new Text("10%"),
                              progressColor: purple,
                            ),
                            SpaceX(x: 8),
                            Text(
                              "17",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SpaceX(x: 100),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Out of schedule",
                          style: TextStyle(
                            color: greyBackground,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        SpaceY(y: 8),
                        Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 45.0,
                              lineWidth: 3.0,
                              percent: 0.49,
                              reverse: false,
                              animation: true,
                              // center: new Text("10%"),
                              progressColor: red,
                            ),
                            SpaceX(x: 8),
                            Text(
                              "90",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recent Activity",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SpaceX(x: 10),
                    Text(
                      "Chatting",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SpaceY(y: 15),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      width: context.screenWidth(0.25),
                      height: 52,
                      decoration: BoxDecoration(
                        color: HexColor("F7F9FB"),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Positioned(
                      left: -9,
                      bottom: 1.5,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/avatars5.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 6,
                      left: 55,
                      child: Container(
                        width: 162,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Completed ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "Task Sed do eiusmod tempor id dolore magna aliqua.",
                                style: TextStyle(fontSize: 11),
                              )
                            ],
                            style: TextStyle(height: 1.5),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SpaceY(y: 15),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      width: context.screenWidth(0.25),
                      height: 52,
                      decoration: BoxDecoration(
                        color: HexColor("F7F9FB"),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Positioned(
                      left: -9,
                      bottom: 1.5,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/avatars4.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 6,
                      left: 55,
                      child: Container(
                        width: 162,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Completed ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "Task Sed do eiusmod tempor id dolore magna aliqua.",
                                style: TextStyle(fontSize: 11),
                              )
                            ],
                            style: TextStyle(height: 1.5),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SpaceY(y: 15),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      width: context.screenWidth(0.25),
                      height: 52,
                      decoration: BoxDecoration(
                        color: HexColor("F7F9FB"),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Positioned(
                      left: -9,
                      bottom: 1.5,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/avatars3.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 6,
                      left: 55,
                      child: Container(
                        width: 162,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Completed ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "Task Sed do eiusmod tempor id dolore magna aliqua.",
                                style: TextStyle(fontSize: 11),
                              )
                            ],
                            style: TextStyle(height: 1.5),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SpaceY(y: 10),
                Container(
                  margin: EdgeInsets.only(left:15, right: 15, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: primaryColor,
                      width: 1,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Message...",
                        contentPadding: EdgeInsets.symmetric(horizontal: 15)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
