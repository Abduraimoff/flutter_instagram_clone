import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String name;
  final String img;
  const Story({
    Key? key,
    required this.name,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.only(left: 15),
          padding: EdgeInsets.all(3),
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(158, 38, 146, 1),
                Color.fromRGBO(250, 169, 88, 1),
              ],
            ),
          ),
          child: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            name,
            softWrap: true,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
