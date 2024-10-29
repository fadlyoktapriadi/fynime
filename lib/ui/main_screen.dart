import 'package:flutter/material.dart';
import 'package:fynime/ui/components/movie_card.dart';
import 'package:fynime/ui/profile_screen.dart';

import '../data/list_movie_anime.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "FyNime.",
                        style: TextStyle(
                            fontSize: 34.0,
                            fontFamily: "DynaPuff",
                            color: Color.fromARGB(255, 76, 201, 254)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return const ProfileScreen();
                          }));  
                        },
                        child: const Icon(
                          Icons.person_outline_rounded,
                          size: 34.0,
                          color: Color.fromARGB(255, 76, 201, 254),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text("Hi, Fadly Oktapriadi",
                        style: TextStyle(fontSize: 20.0, fontFamily: "Outfit")),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text("Hold on tight!",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: "Outfit",
                            color: Color.fromARGB(255, 90, 90, 90))),
                  ),
                  
                  const Padding(
                    padding: EdgeInsets.only(top: 26.0),
                    child: Text(
                      "Movie Anime Popular In This Planet",
                      style: TextStyle(fontSize: 16.0, fontFamily: "Outfit"),
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 76, 201, 254),
                    thickness: 1.0,
                    endIndent: 110.0,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: screenHeight,
                      child: 
                      GridView.count(
                        crossAxisCount: 2,
                        children: animeMovieList.map((anime) {
                            return MovieCard(animemovie: anime);
                            }).toList()
                     ),
                    )
                  )
              ]
              )
              ),
    ));
  }
}
