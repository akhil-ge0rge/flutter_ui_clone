// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class ContainerStack extends StatelessWidget {
  final String title;
  final String item;
  final Color widgetColor;
  final IconData icon;
  final Color iconColor;
  Color iconCircleColor = const Color(0xfffcfeff);

  ContainerStack({
    Key? key,
    required this.title,
    required this.item,
    required this.widgetColor,
    required this.icon,
    required this.iconColor,
    required this.iconCircleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 20, bottom: 10, left: 20),
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 130,
            decoration: BoxDecoration(
              color: widgetColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Positioned(
            right: -40,
            top: -15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: -40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xfff5ffff),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: iconCircleColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      icon,
                      color: iconColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xfffcfeff),
                  ),
                ),
                Text(
                  item,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xfffcfeff),
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
