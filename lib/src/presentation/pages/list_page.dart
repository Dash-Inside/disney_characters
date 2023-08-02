import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Input"),
        titleTextStyle: TextStyle(
          letterSpacing: 0.05,
          color: Theme.of(context).colorScheme.secondary,
          fontSize: 24.0,
          fontWeight: FontWeight.w500,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
