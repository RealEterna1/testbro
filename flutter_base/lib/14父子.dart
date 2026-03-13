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
  List<String> _list = ["1", "2", "3", "4", "5"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(_list.length, (int index) {
            return Child(foodname: _list[index]);
          }),
        ),
      ),
    );
  }
}

//子组件
class Child extends StatefulWidget {
  final String foodname;
  Child({Key? key, required this.foodname}) : super(key: key);

  @override
  _ChildState createState() => _ChildState();
}

class _ChildState extends State<Child> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        widget.foodname,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           alignment: Alignment.center,
//           child: Column(
//             children: [
//               Text("父组件", style: TextStyle(color: Colors.blue, fontSize: 30)),
//               Child(massage: "老高真棒"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Child extends StatefulWidget {
//   final String massage;
//   Child({Key? key, required this.massage}) : super(key: key);

//   @override
//   _ChildState createState() => _ChildState();
// }

// class _ChildState extends State<Child> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(
//         "子组件${widget.massage}",
//         style: TextStyle(color: Colors.red, fontSize: 20),
//       ),
//     );
//   }
// }
// class Child extends StatelessWidget {
//   final String? massage;
//   const Child({Key? key, this.massage}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       child: Text(
//         "子组件$massage",
//         style: TextStyle(color: Colors.red, fontSize: 20),
//       ),
//     );
//   }
// }
