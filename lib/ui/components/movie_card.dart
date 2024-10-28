import 'package:flutter/material.dart';
import 'package:fynime/data/anime_movie.dart';

class MovieCard extends StatelessWidget {

  final AnimeMovie animemovie;

  const MovieCard({super.key, required this.animemovie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 10.0,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'images/${animemovie.imagePoster}',
                        fit: BoxFit.cover,
                      ),
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    animemovie.name,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    animemovie.genre,
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Outfit',
                    ),
                  ),
                  Text(
                    animemovie.rating,
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Outfit',
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