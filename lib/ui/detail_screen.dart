import 'package:flutter/material.dart';
import 'package:fynime/data/anime_movie.dart';

class DetailScreen extends StatelessWidget {
  
  final AnimeMovie animemovie;
  const DetailScreen({super.key, required this.animemovie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'images/${animemovie.imagePoster}',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 510,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                        ),
                        child: Column(
                          children: [
                            Text(
                              animemovie.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.category_outlined,
                                        color: Color.fromARGB(255, 76, 201, 254),
                                      ),
                                      Text(
                                        animemovie.genre,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Outfit'
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.rate_review_outlined,
                                        color: Color.fromARGB(255, 76, 201, 254),
                                      ),
                                      Text(
                                        animemovie.rating,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Outfit'
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 20.0 ),
                        child: Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0 ),
                        child: Text(
                          animemovie.description,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Outfit',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0 ),
                        child: 
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 76, 201, 254), // Background color
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0), // Rounded corners
                              ),
                            ),
                            child: const Text(
                                'Watch Now',
                                style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Outfit',
                                color: Colors.white,
                              ),
                            ),
                           ),
                          ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(255, 76, 201, 254),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  FavoriteButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
   @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: const Color.fromARGB(255, 76, 201, 254),
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}