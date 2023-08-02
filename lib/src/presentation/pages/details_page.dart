import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 222.0,
            flexibleSpace: FlexibleSpaceBar(background: Placeholder()),
          ),
        ],
      ),
    );
  }
}
