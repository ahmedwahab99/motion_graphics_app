import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({ Key? key }) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, /// same count as tapBar items
      child: Scaffold(
        appBar:AppBar(
              title: const Text("title"),
              //centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.notifications_none),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                )
              ],
              //backgroundColor: Colors.purple,
              flexibleSpace: Container(
                
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.purple, Colors.red],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
              ),
              bottom: const TabBar(
                //isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 5,
                tabs: [
                  //Tab(icon: const Icon(Icons.home), text: 'Home'),
                  const Tab(icon: const Icon(Icons.star), text: 'Feed'),
                  Tab(icon: Icon(Icons.face), text: 'Profile'),
                  Tab(icon: Icon(Icons.settings), text: 'Settings'),
                ],
              ),
              elevation: 20,
              titleSpacing: 20,
            ),
        
      ),
    );
  }
}