import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:reorderables/reorderables.dart';
import 'package:trello/utils/margins.dart';

import 'theme.dart';

class TaskView extends StatefulWidget {
  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  ScrollController _scrollController = ScrollController();
  List<Container> _tiles = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: HexColor("E5E5E5"), borderRadius: BorderRadius.circular(13)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Text(
                  "Infinitely flexible",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "client",
                          style: TextStyle(
                            color: HexColor("C5C5C5"),
                            fontSize: 14,
                          ),
                        ),
                        SpaceY(y: 5),
                        Row(
                          children: [
                            Text(
                              "All clients",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SpaceX(x: 10),
                            Image.asset("assets/Vector.png"),
                          ],
                        )
                      ],
                    ),
                    SpaceX(x: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Label",
                          style: TextStyle(
                            color: HexColor("C5C5C5"),
                            fontSize: 14,
                          ),
                        ),
                        SpaceY(y: 5),
                        Row(
                          children: [
                            Text(
                              "Working",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SpaceX(x: 10),
                            Image.asset("assets/Vector.png"),
                          ],
                        )
                      ],
                    ),
                    SpaceX(x: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                            color: HexColor("C5C5C5"),
                            fontSize: 14,
                          ),
                        ),
                        SpaceY(y: 5),
                        Row(
                          children: [
                            Text(
                              "Friends",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SpaceX(x: 10),
                            Image.asset("assets/Vector.png"),
                          ],
                        )
                      ],
                    ),
                    SpaceX(x: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sort",
                          style: TextStyle(
                            color: HexColor("C5C5C5"),
                            fontSize: 14,
                          ),
                        ),
                        SpaceY(y: 5),
                        Row(
                          children: [
                            Text(
                              "By Activity",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SpaceX(x: 10),
                            Image.asset("assets/Vector.png"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: context.screenWidth(.75),
            height: context.screenHeight(.75),
            child: ListView(
              // scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 0, right: 0),
                  child: ReorderableWrap(
                    direction: Axis.horizontal,
                    spacing: 15,
                    runSpacing: 10,
                    controller: _scrollController,
                    onReorder: _onReorder,
                    needsLongPressDraggable: false,
                    onNoReorder: (int index) {
                      //this callback is optional
                      debugPrint(
                          '${DateTime.now().toString().substring(5, 22)} reorder cancelled. index:$index');
                    },
                    onReorderStarted: (int index) {
                      //this callback is optional
                      debugPrint(
                          '${DateTime.now().toString().substring(5, 22)} reorder started: index:$index');
                    },
                    children: _buildContainers(context),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    print(oldIndex);
    print(newIndex);
    setState(() {
      Container container = _tiles.removeAt(oldIndex);
      _tiles.insert(newIndex, container);
    });
  }

  List<Container> _buildContainers(BuildContext context) {
    return [
      Container(
        width: context.screenWidth(0.3),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 200,
              bottom: -3,
              child: Container(
                height: 160,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/vector4.png"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Project Brief",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SpaceY(y: 8),
                  Container(
                    width: 230,
                    child: Text(
                      "Trello is free for everyone premium plans available for teams",
                      style: TextStyle(height: 1.5, fontSize: 14),
                    ),
                  ),
                  SpaceY(y: 20),
                  Row(
                    children: [1, 2, 3, 4].map((e) {
                      return Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/avatars$e.png"),
                              fit: BoxFit.cover),
                        ),
                      );
                    }).toList(),
                  ),
                  SpaceY(y: 10),
                  Row(
                    children: [
                      Text(
                        "Active recently",
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor("C4C4C4"),
                        ),
                      ),
                      SpaceX(x: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [1, 2, 3, 4, 5].map((e) {
                          return Icon(
                            Icons.star,
                            color: yellow,
                            size: 18,
                          );
                        }).toList(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        width: context.screenWidth(0.3),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 200,
              bottom: -3,
              child: Container(
                height: 160,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/vector5.png"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Waiting For Response",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SpaceY(y: 8),
                  Container(
                    width: 230,
                    child: Text(
                      "Power-up with 100+ popular apps. Connect Slack, Google Apps & more!",
                      style: TextStyle(height: 1.5, fontSize: 14),
                    ),
                  ),
                  SpaceY(y: 20),
                  Row(
                    children: [1, 2, 3, 4].map((e) {
                      return Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/avatars$e.png"),
                              fit: BoxFit.cover),
                        ),
                      );
                    }).toList(),
                  ),
                  SpaceY(y: 10),
                  Row(
                    children: [
                      Text(
                        "Active recently",
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor("C4C4C4"),
                        ),
                      ),
                      SpaceX(x: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [1, 2, 3, 4, 5].map((e) {
                          return Icon(
                            Icons.star,
                            color: yellow,
                            size: 18,
                          );
                        }).toList(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        width: context.screenWidth(0.1875),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SpaceY(y: 8),
                  Container(
                    width: 230,
                    child: Text(
                      "Ut enim ad minim veniam, quis nostrud exercitation.",
                      style: TextStyle(height: 1.5, fontSize: 14),
                    ),
                  ),
                  SpaceY(y: 20),
                  Row(
                    children: [1, 2, 3, 4].map((e) {
                      return Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/avatars$e.png"),
                              fit: BoxFit.cover),
                        ),
                      );
                    }).toList(),
                  ),
                  SpaceY(y: 10),
                  Row(
                    children: [
                      Text(
                        "1 week ago",
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor("C4C4C4"),
                        ),
                      ),
                      SpaceX(x: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [1, 2, 3, 4, 5].map((e) {
                          return Icon(
                            Icons.star,
                            color: yellow,
                            size: 18,
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  SpaceY(y: 20),
                  Container(
                    width: 234,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/vector3.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        width: context.screenWidth(0.1875),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 17,
              left: 117,
              child: Container(
                width: 120,
                height: 105,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/vector1.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Working",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SpaceY(y: 8),
                  Container(
                    width: 230,
                    child: Text(
                      "Prototypes, mockups, client and collaboaration",
                      style: TextStyle(height: 1.5, fontSize: 14),
                    ),
                  ),
                  SpaceY(y: 20),
                  Row(
                    children: [3, 4].map((e) {
                      return Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/avatars$e.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SpaceY(y: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 week ago",
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor("C4C4C4"),
                        ),
                      ),
                      SpaceY(y: 10),
                      Row(
                        children: [1, 2, 3, 4, 5].map((e) {
                          return Icon(
                            Icons.star,
                            color: yellow,
                            size: 18,
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        width: context.screenWidth(0.1875),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Coming Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SpaceY(y: 8),
                  Container(
                    width: 230,
                    child: Text(
                      "Get ideas on how to use Trello with 100+ free sample Trello boards.",
                      style: TextStyle(height: 1.5, fontSize: 14),
                    ),
                  ),
                  SpaceY(y: 20),
                  Row(
                    children: [1, 2, 3, 4].map((e) {
                      return Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/avatars$e.png"),
                              fit: BoxFit.cover),
                        ),
                      );
                    }).toList(),
                  ),
                  SpaceY(y: 10),
                  Row(
                    children: [
                      Text(
                        "1 week ago",
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor("C4C4C4"),
                        ),
                      ),
                      SpaceX(x: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [1, 2, 3, 4, 5].map((e) {
                          return Icon(
                            Icons.star,
                            color: yellow,
                            size: 18,
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  SpaceY(y: 20),
                  Container(
                    width: 234,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/vector2.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
