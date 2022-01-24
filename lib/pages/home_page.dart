import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/util/post.dart';
import 'package:instagram_clone/util/story.dart';
import 'package:instagram_clone/widgets/user_post.dart';
import 'package:instagram_clone/widgets/user_story.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 95,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: stories.length,
                    itemBuilder: (context, index) {
                      return Story(
                        img: stories[index]['imageUrl'],
                        name: stories[index]['name'],
                      );
                    }),
              ),
              Divider(color: Colors.grey),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return UserPost(
                      avatarImg: posts[index]['avatar'],
                      location: posts[index]['location'],
                      isLiked: posts[index]['isLiked'],
                      numLikes: posts[index]['like'],
                      userImage: posts[index]['imageUrl'],
                      userName: posts[index]['name'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/logo.svg',
            width: 120,
          ),
          IconButton(
            splashRadius: 25,
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/share.svg',
              width: 25,
            ),
          )
        ],
      ),
    );
  }
}
