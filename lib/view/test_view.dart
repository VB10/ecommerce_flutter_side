import 'package:flutter/material.dart';

import '../core/components/button/fill_button_widget.dart';
import '../core/components/image/circle_image.dart';

class TestView extends StatefulWidget {
  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Card(
                child: Center(child: Text("data $index")),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 30,
              itemBuilder: (context, index) {
                print("$index - ${scrollController.offset}");
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(child: Text(index.toString())),
                    title: Placeholder(fallbackHeight: 100),
                    subtitle: Text("Hello $index"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  FullWidthButton buildSignUpButton(BuildContext context) {
    return FullWidthButton(
      title: "SIGN UP",
      onPressed: () {},
      icon: CircleImage(
        path: "assets/icon/back-1.png",
        radius: 15,
        turns: 0.5,
        scale: 1.5,
      ),
    );
  }
}
