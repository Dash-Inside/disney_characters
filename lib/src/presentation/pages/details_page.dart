import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    //  mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('aaaaaaaaa'),
                      Text('aaaaa'),
                    ],
                  ),
                ),
              ),
            ],
            expandedHeight: 222.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('aaaaaaaaa'),
                  Text('aaaaa'),
                ],
              ),
              background: Image.network(
                'https://media.glamourmagazine.co.uk/photos/645123f9b153dcb8e4118150/16:9/w_1280,c_limit/DISNEY%20PRINCESS%20020523.jpg',
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
                color: const Color.fromRGBO(0, 0, 0, 0.6),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    top: 6.0,
                    bottom: 6.0,
                  ),
                  child: Text(
                    'Фильмография',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 32.0,
                    bottom: 8.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '- Фильм А',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
