import 'package:flutter/material.dart';
import 'package:fynime/data/anime_movie.dart';


final _scrollController = ScrollController();

class DetailScreen extends StatelessWidget {
  
  final AnimeMovie animemovie;
  const DetailScreen({super.key, required this.animemovie});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return DetailMobileScreen(animemovie: animemovie);
        } else {
          return DetailWebScreen(animemovie: animemovie);
        }
      },
    );
  }
}

class DetailMobileScreen extends StatefulWidget {

  final AnimeMovie animemovie;

  const DetailMobileScreen({super.key, required this.animemovie});

  @override
  State<DetailMobileScreen> createState() => _DetailMobileScreenState();
}

class _DetailMobileScreenState extends State<DetailMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'images/${widget.animemovie.imagePoster}',
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
                              widget.animemovie.name,
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
                                        widget.animemovie.genre,
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
                                        widget.animemovie.rating,
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
                          widget.animemovie.description,
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
                          SizedBox(
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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class DetailWebScreen extends StatelessWidget {
  
  final AnimeMovie animemovie;
  const DetailWebScreen({super.key, required this.animemovie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 64,
    ), 
      child: Center(
        child: SizedBox(
          width: 1200,
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
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
                  ),
                ],
              ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: 850, // Set the maximum height for the image
                                  ),
                                  child: Image.asset(
                                    'images/${animemovie.imagePoster}',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
              const SizedBox(width: 32),
              Expanded(
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          child: Text(
                            animemovie.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Outfit',
                            ),
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: <Widget>[
                                const Icon(Icons.category, color: Color.fromARGB(255, 76, 201, 254)),
                                const SizedBox(width: 8.0),
                                Text(
                                  animemovie.genre,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Outfit',
                                  ),
                                ),
                              ],
                            ),
                            const FavoriteButton(),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: <Widget>[
                            const Icon(Icons.rate_review_outlined, color: Color.fromARGB(255, 76, 201, 254)),
                            const SizedBox(width: 8.0),
                            Text(
                              animemovie.rating,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Outfit',
                                color: Color.fromARGB(255, 255, 179, 39),
                              ),
                            ),
                          ],
                        ),
                        
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            animemovie.description,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Outift',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
     ),
    ),
    ),  
    );
  }
}


class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

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
          if (isFavorite) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Added to Favorite'),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Removed from Favorite'),
              ),
            );
          }
        },
      ),
    );
  }
}