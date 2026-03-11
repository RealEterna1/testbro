import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter自定义无状态组件",
//       home: Scaffold(
//         appBar: AppBar(title: Center(child: Text("头部区域"))),
//         body: Container(child: Center(child: Text("中部区域"))),
//         bottomNavigationBar: Container(
//           height: 80,
//           child: Center(child: Text("底部区域")),
//         ),
//       ),
//     );
//   }
// }
//第一个类对外
class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

//第二个私有类对内
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter自定义无状态组件",
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("头部区域"))),
        body: Container(child: Center(child: Text("中部区域"))),
        bottomNavigationBar: Container(
          height: 80,
          child: Center(child: Text("底部区域")),
        ),
      ),
    );
  }
}
