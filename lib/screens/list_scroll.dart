import 'package:flutter/material.dart';

class ListScrollWidget extends StatelessWidget {
  const ListScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> indexList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Widgets'),
      ),
      body: ListView.builder(
        itemCount: indexList.length,
        itemBuilder: (context, index) {
          debugPrint(index.toString());
          return containerMethod2(Colors.lightBlue, indexList[index]);
        },
      ),
    );
  }
}

Padding containerMethod2(Color color, int value) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200,
      width: 377,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Center(
        child: Text(
          '$value',
          style: const TextStyle(fontSize: 50, color: Colors.white),
        ),
      ),
    ),
  );
}
