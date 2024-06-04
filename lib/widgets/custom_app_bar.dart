import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallBack;
  CustomAppBar(this.leftIcon, this.rightIcon, {this.leftCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      //THESE ARE ALL FOR THE ICON
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: leftCallBack != null ? () => leftCallBack : null,
          child: _buildIcon(leftIcon),
        ), //THESE ARE ALL FOR THE ICON - BACK ICON -- TOP CODE
        _buildIcon(rightIcon),
      ]),
    );
  }
}

Widget _buildIcon(IconData icon) {
  return Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
    child: Icon(icon),
  );
}
