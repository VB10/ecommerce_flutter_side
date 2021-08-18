import 'package:flutter/material.dart';

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
}
