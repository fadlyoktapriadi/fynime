import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 10.0,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'images/anime1.jpg',
                    height: 230,
                    fit: BoxFit.cover,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'WEATHERING WITH YOU',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Romance, Drama',
                      style: TextStyle(fontSize: 13.0, fontFamily: 'Outfit')),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('⭐⭐⭐⭐ | 4.7',
                        style: TextStyle(fontSize: 13.0, fontFamily: 'Outfit')),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
