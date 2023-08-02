import 'package:flutter/material.dart';

import '../widgets/list_card.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        centerTitle: true,
        title: const Text("Input"),
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
      body: const Column(
        children: [
          ListCard(),
          ListCard(),
          ListCard(),
          ListCard(),
        ],
      ),
    );
  }
}
