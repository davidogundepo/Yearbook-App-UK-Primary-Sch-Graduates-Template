import 'package:flutter/material.dart';

Color iconColor = Color.fromRGBO(90, 38, 32, 1.0);
Color textColor = Color.fromRGBO(90, 38, 32, 1.0);


class MenuItems extends StatelessWidget {

  final IconData icon;
  final String title;
  final Function onTap;

  const MenuItems({Key key, this.icon, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                color: iconColor,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: textColor
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
