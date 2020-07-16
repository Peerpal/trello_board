import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:trello/utils/margins.dart';
import 'package:trello/utils/tasks.dart';
import 'package:trello/utils/theme.dart';
import 'package:trello/views/profile_view.dart';

class TrelloBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Container(
        width: context.screenWidth(),
        height: context.screenHeight(),
        padding: EdgeInsets.only(left: 20.0, right: 20, top: 10.0),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset(
                    "assets/logo.png",
                    width: 136,
                    height: 25,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: InkWell(
                        child: Center(
                          child: Text(
                            "Start a new project",
                            style: TextStyle(
                              color: background,
                            ),
                          ),
                        ),
                        splashColor: background,
                        onTap: () {
                          print("start new project");
                        },
                      ),
                    ),
                    SpaceX(x: 70),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          hoverColor: background,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: Card(
                              elevation: .2,
                              shape: CircleBorder(),
                              child: Icon(
                                FeatherIcons.search,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                        SpaceX(x: 5),
                        InkWell(
                          onTap: () {},
                          hoverColor: background,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: Card(
                              elevation: .2,
                              shape: CircleBorder(),
                              child: Icon(
                                FeatherIcons.headphones,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                        SpaceX(x: 5),
                        InkWell(
                          onTap: () {},
                          hoverColor: background,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: Card(
                              elevation: .2,
                              shape: CircleBorder(),
                              child: Icon(
                                FeatherIcons.bell,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Container(
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Column(
                        children: [
                          Expanded(
                            child: NavigationRail(
                              destinations: [
                                NavigationRailDestination(
                                  icon: Container(
                                    width: 37,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: greyBackground),
                                    child: Icon(FeatherIcons.compass, size: 17),
                                  ),
                                  label: Text("."),
                                ),
                                NavigationRailDestination(
                                  icon: Container(
                                    width: 37,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: greyBackground),
                                    child: Icon(FeatherIcons.cloudLightning,
                                        size: 17),
                                  ),
                                  label: Text("."),
                                ),
                                NavigationRailDestination(
                                  icon: Container(
                                    width: 37,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: greyBackground),
                                    child: Icon(FeatherIcons.calendar, size: 17),
                                  ),
                                  label: Text("."),
                                ),
                                NavigationRailDestination(
                                  icon: Container(
                                    width: 37,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: greyBackground),
                                    child: Icon(FeatherIcons.user, size: 17),
                                  ),
                                  label: Text("."),
                                ),
                                NavigationRailDestination(
                                  icon: Container(
                                    width: 37,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: greyBackground),
                                    child:
                                        Icon(FeatherIcons.dollarSign, size: 17),
                                  ),
                                  label: Text("."),
                                ),
                                NavigationRailDestination(
                                  icon: Container(
                                    width: 37,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: greyBackground),
                                    child: Icon(FeatherIcons.slack, size: 17),
                                  ),
                                  label: Text("."),
                                ),
                              ],
                              selectedIndex: 0,
                            ),
                          ),
                          Container(
                            width: 37,
                            height: 37,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: greyBackground),
                            child: Icon(FeatherIcons.checkSquare, size: 17),
                          ),
                          SpaceY(y: 20),
                          Container(
                            width: 37,
                            height: 37,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: greyBackground),
                            child: Icon(FeatherIcons.trash, size: 17),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TaskView()
                    ),
                    ProfileView(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
