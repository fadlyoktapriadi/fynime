import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 700) {
              return const ProfileMobileScreen();
            } else {
              return const ProfileWebScreen();
            }
          },
        ),
      ),
    );
  }
}

class ProfileMobileScreen extends StatelessWidget {
  const ProfileMobileScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
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
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('images/fadly.jpg'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "Fadly Oktapriadi",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Outfit",
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "Dicoding: fadlyoktapriadi",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "Outfit",
                    color: Color.fromARGB(255, 90, 90, 90)
                  ),
                ),
              ),      
            ],
          )
      ),
    );
  }
}

class ProfileWebScreen extends StatelessWidget {
  const ProfileWebScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
          Center(
            child: SizedBox(
              width: 400.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
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
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage('images/fadly.jpg'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Fadly Oktapriadi",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Dicoding: fadlyoktapriadi",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Outfit",
                        color: Color.fromARGB(255, 90, 90, 90)
                      ),
                    ),
                  ),      
                ],
              ),
            ),
          )
      ),
    );
  }
}