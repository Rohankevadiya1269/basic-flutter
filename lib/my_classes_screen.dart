import 'package:flutter/material.dart';

class MyClassesScreen extends StatefulWidget {
  const MyClassesScreen({super.key});

  @override
  State<MyClassesScreen> createState() => _MyClassesScreenState();
}

class _MyClassesScreenState extends State<MyClassesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.purple,
            )),
        title: const Text(
          'MY CLASSES',
          style: TextStyle(color: Colors.purple),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          _buildElement(
            image: 'assets/background/bg.png',
            heading: 'Arts & Humanities',
            subject: 'Draw and Paint Arts',
            prog: '40 % Complete',
            progress: 40,
          ),
          _buildElement(
            image: 'assets/background/bg.png',
            heading: 'Arts & Humanities',
            subject: 'Business ans Law',
            prog: '60 % Complete',
            progress: 60,
          ),
        ],
      ),
    );
  }
}

Widget _buildElement({
  required String image,
  required String heading,
  required String prog,
  required String subject,
  required int progress,
}) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(4.0, 4.0),
              blurRadius: 10,
              spreadRadius: 1.0),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 10,
              spreadRadius: 1.0)
        ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const AspectRatio(
            //   aspectRatio: 16 / 9,
            // ),
            Image.asset(
              image,
              width: 120,
              height: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.purple,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subject,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    prog,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress / 100,
                    backgroundColor: Colors.grey[300],
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.purple),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
