import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FyNime.",
                        style: TextStyle(
                            fontSize: 34.0,
                            fontFamily: "DynaPuff",
                            color: Color.fromARGB(255, 76, 201, 254)),
                      ),
                    
                      Icon(
                        Icons.person_outline_rounded,
                        size: 34.0,
                        color: Color.fromARGB(255, 76, 201, 254),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0), 
                    child: Text("Hi, Fadly Oktapriadi", 
                    style: TextStyle(
                         fontSize: 20.0,
                         fontFamily: "Outfit"
                         )
                        ),
                    ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0), 
                    child: Text("Hold on tight!", 
                    style: TextStyle(
                         fontSize: 16.0,
                         fontFamily: "Outfit",
                         color: Color.fromARGB(255, 90, 90, 90)
                         )
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0), 
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search your favorite anime...",
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 253, 254, 255)
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 26.0),
                    child: 
                      Text("Anime Popular In This Planet",
                        style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Outfit"
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 76, 201, 254),
                    thickness: 1.0,
                    endIndent: 110.0,
                  ),

                ],
          )
        )
      ),
    );
  }
}
