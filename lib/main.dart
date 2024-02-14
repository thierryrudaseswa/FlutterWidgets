import 'package:flutter/material.dart';
import 'package:tryflutter/pages/HomePage.dart';
import 'package:tryflutter/pages/account.dart';
import 'package:tryflutter/pages/message.dart';
import 'package:tryflutter/pages/setting.dart';
import 'package:tryflutter/shapes/circle.dart';
import 'package:tryflutter/shapes/square.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: BottomNav(),
    ),
  ));
}

// GridView in flutter

class Hometry extends StatelessWidget {
  const Hometry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: 10,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
              );
            }));
  }
}

//Expanded Widget in flutter and remember it must be in Column or Row
class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(color: Colors.blue),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.black12),
          ),
          Expanded(
            flex: 7,
            child: Container(color: Colors.green),
          ),
        ],
      ),
    );
  }
}

// ListView widget in flutter

class ListViewWigdet extends StatelessWidget {
  ListViewWigdet({super.key});

  final List _posts = [
    "post 1",
    "post 2",
    "post 3",
    "post 2",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // for the stories
          Expanded(
            flex: 1,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 9,
                itemBuilder: (context, index) {
                  return CircleShape();
                }),
          ),

          // for the posts
          Expanded(
            flex: 10,
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return SquareShape(child: _posts[index]);
                }),
          ),
        ],
      ),
    );
  }
}

// GestureDetector wigdet in flutter

class GestureWidget extends StatefulWidget {
  const GestureWidget({super.key,});
  

  @override
  State<GestureWidget> createState() => _GestureWidgetState();
}

class _GestureWidgetState extends State<GestureWidget> {
  int num = 0;
  void IncreaseNumber(){
    setState(() {
      num++;
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        child: Scaffold(
          body: Container(
            height: 200,
            decoration: BoxDecoration(color: Colors.green),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Tapped "+ num.toString() +" times"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: IncreaseNumber,
                    child: Container(
                       
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                      ),
                    
                      child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Tap here "),
                      )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




//  Bottom NavBar that is common for almost phones nowadays


class BottomNav extends StatefulWidget {
BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  final List<Widget> PagesLand = [
    HomePage(),
    SettingPage(),
    Account(),
    Message()
  ];

  void navigationbot(int index){
    setState(() {
      _selectedIndex = index;
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagesLand[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: navigationbot,
      
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon : Icon(Icons.message), label: "Message"),
         BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
                 BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
       

      ]), );
  }
}