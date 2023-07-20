import 'package:flutter/material.dart';

class SingleScrollPageWidget extends StatelessWidget {
  const SingleScrollPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Widgets'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // physics: const BouncingScrollPhysics(),
              // reverse: true,
              // padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  containerMethod(Colors.lightBlue),
                  containerMethod(Colors.red),
                  containerMethod(Colors.green),
                  containerMethod(Colors.purple),
                  containerMethod(Colors.yellow),
                  containerMethod(Colors.black),
                  containerMethod(Colors.orange),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              // physics: const BouncingScrollPhysics(),
              // reverse: true,
              // padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  containerMethod(Colors.lightBlue),
                  containerMethod(Colors.red),
                  containerMethod(Colors.green),
                  containerMethod(Colors.purple),
                  containerMethod(Colors.yellow),
                  containerMethod(Colors.black),
                  containerMethod(Colors.orange),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Padding containerMethod(Color color) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200,
      width: 377,
      decoration: BoxDecoration(
        color: color,
      ),
    ),
  );
}
