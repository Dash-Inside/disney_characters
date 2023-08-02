// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 16.0,
      ),
      child: InkWell(
        onTap: () {
          // Navigator.of(context).pushNamed();
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Placeholder(),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        height: 1.0,
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Cinema name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    // Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
