import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget {
  const BadgeIcon({Key? key, required this.icon, this.badgeCount = 0})
      : super(key: key);

  final Widget icon;
  final int badgeCount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[icon, _badge()],
    );
  }

  Widget _badge() {
    return Positioned(
        top: 0,
        right: 0,
        child: Container(
          padding: const EdgeInsets.all(1),
          constraints: const BoxConstraints(minHeight: 13, minWidth: 13),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(7)),
          child: Text(
            badgeCount.toString(),
            style: const TextStyle(fontSize: 8, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
