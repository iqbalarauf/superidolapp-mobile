import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Super Idol Apps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Monsterrat',
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextEditingController _searchController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 64, left: 24, right: 24),
                child: SizedBox(
                    height: size.height / 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Welcome, \nSuper Idol',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xffE6E6E6),
                          radius: 24,
                          child: Icon(color: Colors.black, Icons.person),
                        )
                      ],
                    ))),
            Container(
              margin: EdgeInsets.only(top: 10, left: 8),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Image.asset(
                    'assets/HeaderList/1.png',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/HeaderList/2.png',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/HeaderList/3.png',
                    width: 300,
                    fit: BoxFit.cover,
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
