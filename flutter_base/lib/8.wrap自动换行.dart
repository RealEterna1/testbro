import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

List<Widget> getList() {
  return List.generate(10, (index) {
    return Container(width: 100, height: 100, color: Colors.blue);
  });
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("flex代码示例"))),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.amber),
          child: Wrap(
            direction: Axis.horizontal,
            children: getList(),
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.spaceAround,
          ),
        ),
      ),
    );
  }
}
