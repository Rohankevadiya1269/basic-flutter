// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:learning_app/book_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> courses = [
    {
      'title': 'Art & Humanitites',
      'detail': 'Draw and paint Arts',
      'duration': '2h 25mins',
      'image': 'assets/background/bg.png'
    },
    {
      'title': 'Computer and technology',
      'detail': 'Programming',
      'duration': '7h 2mins',
      'image': 'assets/background/bg.png'
    },
    {
      'title': 'Law & politics',
      'detail': 'Law',
      'duration': '5h 32mins',
      'image': 'assets/background/bg.png'
    },
    {
      'title': 'Art & Humanities',
      'detail': 'Music and dancing',
      'duration': '4h 57mins',
      'image': 'assets/background/bg.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.purple,
          ),
        ),
        title: const Text(
          'HOME',
          style: TextStyle(color: Colors.purple),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 33,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w500,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BookClass()));
                      },
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Book Class',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                ),
              ),
              SizedBox(
                width: 140,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'My Courses',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Last Classes',
                  style: TextStyle(color: Colors.purple, fontSize: 28),
                )),
          ),
          const SizedBox(height: 20),
          Container(
              height: 240,
              width: 500,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: courses.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.05,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0.2, 3.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-3.0, -4.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0)
                            ]),

                        width: 220,
                        // margin: const EdgeInsets.only(right: 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              courses[index]['image']!,
                              width: 300,
                              height: 120,
                            ),
                            const SizedBox(height: 9),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(13.5, 0, 0, 0),
                              child: Text(
                                courses[index]['title']!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(13.5, 0, 0, 0),
                              child: Text(
                                courses[index]['detail']!,
                                style: const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(13.5, 0, 0, 0),
                              child: Text(
                                courses[index]['duration']!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
