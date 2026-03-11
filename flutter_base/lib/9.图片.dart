import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("image代码示例")),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: Image.network(
            "https://n.sinaimg.cn/sinakd20230326s/250/w600h450/20230326/ee32-3a8a877de890e8b4fae2bd39438112e5.png",
            width: 500,
            height: 500,
            fit: BoxFit.fitWidth,
          ),
          // child: Text(
          //   "Hello,Flutter!Hello,Flutter!Hello,Flutter!Hello,Flutter!Hello,Flutter!Hello,Flutter!Hello,Flutter!Hello,Flutter!",
          //   style: TextStyle(
          //     fontSize: 50,
          //     color: Colors.blue,
          //     fontStyle: FontStyle.italic,
          //   ),
          //   maxLines: 1,
          //   overflow: TextOverflow.ellipsis,
          // ),
        ),
      ),
    );
  }
}
