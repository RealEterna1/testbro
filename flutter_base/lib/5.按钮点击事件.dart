import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: "Flutter组件初体验",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("头部区域"))),
        body: Container(
          child: Center(
            child: TextButton(
              onPressed: () {
                print("按钮的点击事件");
              },
              child: Text("按钮"),
            ),
            // child: GestureDetector(
            //   onTap: () {
            //     print("点击了该区域");
            //   },
            //   child: Text("点我宝子"),
            // ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          child: Center(child: Text("底部区域")),
        ),
      ),
    ),
  );
}
