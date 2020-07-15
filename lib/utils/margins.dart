import 'package:flutter/material.dart';
import 'package:reorderables/generated/i18n.dart';

class SpaceX extends StatelessWidget {
  final double x;
  SpaceX({this.x});
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: this.x);
  }
}

class SpaceY extends StatelessWidget {
  final double y;
  SpaceY({this.y});
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: this.y);
  }
}

Padding spacer() => Padding(
  padding: const EdgeInsets.symmetric(
    horizontal: 20.0,
    vertical: 8,
  ),
  child: Divider(),
);

extension CustomContext on BuildContext {
  double screenHeight([double percentage = 1]) =>
      MediaQuery.of(this).size.height * percentage;

  double screenWidth([double percentage = 1]) =>
      MediaQuery.of(this).size.width * percentage;
}
