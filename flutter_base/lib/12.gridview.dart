import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("滚动")),
        body: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              color: Colors.blue,
              height: 100,
              alignment: Alignment.center,
              child: Text(
                "我是第${index + 1}个",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            );
          }),
        ),
        // body: Stack(
        //   children: [
        //     SingleChildScrollView(
        //       controller: _controller,
        //       child: Column(
        //         children: List.generate(100, (index) {
        //           return Container(
        //             margin: EdgeInsets.only(top: 10),
        //             width: double.infinity,
        //             color: Colors.blue,
        //             height: 100,
        //             alignment: Alignment.center,
        //             child: Text(
        //               "我是第${index + 1}个",
        //               style: TextStyle(color: Colors.white, fontSize: 30),
        //             ),
        //           );
        //         }),
        //       ),
        //     ),
        //     Positioned(
        //       right: 10,
        //       top: 10,
        //       child: GestureDetector(
        //         onTap: () {
        //           _controller.animateTo(
        //             _controller.position.maxScrollExtent,
        //             duration: Duration(seconds: 1),
        //             curve: Curves.easeIn,
        //           );
        //         },
        //         child: Container(
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(40),
        //             color: Colors.red,
        //           ),

        //           width: 80,
        //           height: 80,
        //           alignment: Alignment.center,
        //           child: Text("去底部", style: TextStyle(color: Colors.white)),
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       right: 10,
        //       bottom: 10,
        //       child: GestureDetector(
        //         onTap: () {
        //           _controller.jumpTo(_controller.position.minScrollExtent);
        //         },
        //         child: Container(
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(40),
        //             color: Colors.red,
        //           ),

        //           width: 80,
        //           height: 80,
        //           alignment: Alignment.center,
        //           child: Text("去顶部", style: TextStyle(color: Colors.white)),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
