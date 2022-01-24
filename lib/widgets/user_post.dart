import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserPost extends StatelessWidget {
  final String avatarImg;
  final String userImage;
  final String userName;
  final String location;
  final String numLikes;
  final bool isLiked;

  const UserPost({
    Key? key,
    required this.avatarImg,
    required this.userName,
    required this.location,
    required this.numLikes,
    this.isLiked = false,
    required this.userImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(avatarImg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        location,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: Image.asset('assets/images/three_dots.png'),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          width: double.infinity,
          height: 375,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(userImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    splashRadius: 25,
                    onPressed: () {},
                    icon: isLiked
                        ? SvgPicture.asset(
                            'assets/images/heart_red.svg',
                            width: 25,
                            height: 25,
                          )
                        : SvgPicture.asset(
                            'assets/images/heart.svg',
                            width: 25,
                            height: 25,
                          ),
                  ),
                  IconButton(
                    splashRadius: 25,
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/images/comment.svg'),
                  ),
                  IconButton(
                    splashRadius: 25,
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/share.svg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
              IconButton(
                splashRadius: 25,
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border_rounded,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            numLikes,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}