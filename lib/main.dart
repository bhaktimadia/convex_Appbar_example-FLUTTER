import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: GradientAppBar(
            title: const Text('Covex_AppBar'),
            backgroundColorStart: Colors.indigo,
            backgroundColorEnd: Colors.blue,
          ),
            body: TabBarView(
              children: <Widget>[
                Container(
                  //Home Page
                  child: Center(
                    child:Icon(Icons.home,size: 120,),
                  ),
                ),
                Container(
                  //Discovery Page
                  child: Center(
                    child: Icon(Icons.map, size: 120,),
                  ),
                ),
                Container(
                  //Add Page
                  child: Center(
                    child: Icon(Icons.add,size: 120,),
                  ),
                ),
                Container(
                  //Message Page
                  child: Center(
                    child: Icon(Icons.message,size: 120,),
                  ),
                ),
                Container(
                  //Profile Page
                  child: Center(
                    child: Icon(Icons.people,size: 120,),
                  ),
                ),
                ]
              /*.map((i)=>Center(child: Text('$i')))
                .toList(growable: false)*/,

            ),
          bottomNavigationBar: ConvexAppBar(
            items: [
              TabItem(
              icon: Icons.home,
              title: 'Home'
          ),
          TabItem(
              icon: Icons.map,
              title: 'Discovery'
          ),
          TabItem(
              icon: Icons.add,
              title: 'Add'
          ),
          TabItem(
              icon: Icons.message,
              title: 'Message'
          ),
          TabItem(
              icon: Icons.people,
              title: 'Profile'
          )],
          style: TabStyle.react,
          initialActiveIndex: 2,
          onTap: (int i) => print('click index=$i'),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: [Colors.red, Colors.indigo,Colors.teal]
            ),
          ),
        ),
      ),
    );
  }
}
