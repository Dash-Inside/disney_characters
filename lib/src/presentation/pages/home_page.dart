import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        shadowColor: const Color.fromRGBO(0, 0, 0, 0),
        backgroundColor: Theme.of(context).colorScheme.surface,
        centerTitle: true,
        title: Text(
          'Disney Character Search',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 24.0,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(
          16.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.cancel_outlined,
                        size: 20.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2.0,
                          color: Theme.of(context).colorScheme.primary),
                      borderRadius: BorderRadius.circular(
                        4.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2.0,
                          color: Theme.of(context).colorScheme.primary),
                      borderRadius: BorderRadius.circular(
                        4.0,
                      ),
                    ),
                    label: const Text(
                      'Character Name',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/list');
              },
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_outlined,
                    size: 16.0,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      height: 1.0,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
