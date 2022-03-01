import 'package:flutter/material.dart';
import 'package:motion_graphics_app/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String userName = "Ahmed Abdalwahab";

    return Scaffold(
        backgroundColor: ConstColors.lightBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: ConstColors.light,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    size: 40,
                    color: ConstColors.primary,
                  ),
                ),
              )
            ],
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 0,
                  ),
                  Text(
                    "Hello,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blueGrey[200]),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    userName,
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
          ),
        ),
        body: NewsFeed());
  }
}

class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NewsCard(),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Container(
        height: 270,
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
            color: ConstColors.light, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 200,
              child: ClipRect(
                child: const Image(
                  
                  image: AssetImage(
                    "images/image1.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
