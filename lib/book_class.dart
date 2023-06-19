import 'package:flutter/material.dart';
import 'package:learning_app/my_classes_screen.dart';

class BookClass extends StatefulWidget {
  const BookClass({super.key});

  @override
  State<BookClass> createState() => _BookClassState();
}

class _BookClassState extends State<BookClass> {
  final List<Map<String, String>> course = [
    {
      'title': 'Art & Humanitites',
      'duration': '19 Courses',
      'image': 'assets/background/bg.png'
    },
    {
      'title': 'Computer and technology',
      'duration': '34 Courses',
      'image': 'assets/background/bg.png'
    },
    {
      'title': 'Law & politics',
      'duration': '17 Courses',
      'image': 'assets/background/bg.png'
    },
    {
      'title': 'Art & Humanities',
      'duration': '15 Courses',
      'image': 'assets/background/bg.png'
    },
  ];
  bool _isChecked = false;

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
            )),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Book Your Class',
          style: TextStyle(fontSize: 21, color: Colors.purple),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          SizedBox(
              height: 160,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: course.length,
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
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-4.0, -4.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0)
                            ]),
                        width: 140,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              course[index]['image']!,
                              width: 150,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height / 13,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      course[index]['title']!,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.purple,
                                      ),
                                    ),
                                    // const SizedBox(height: 12),
                                    Text(
                                      course[index]['duration']!,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
          const SizedBox(height: 28),
          IntrinsicWidth(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Select Class',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      width: 130,
                      height: 37,
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      decoration: BoxDecoration(
                        // ignore: prefer_const_constructors
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        underline: const SizedBox(),
                        style: const TextStyle(color: Colors.white),
                        dropdownColor: Colors.purple,
                        iconEnabledColor: Colors.white,
                        items: const <DropdownMenuItem<String>>[
                          DropdownMenuItem<String>(
                            value: 'Arts & Humanities',
                            child: Text('Arts & Humanities'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Computer and Technology',
                            child: Text('Computer and Technology'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Law and Politics',
                            child: Text('Law and Politics'),
                          ),
                        ],
                        onChanged: (String? newValue) {
                          // Handle class selection here
                        },
                        hint: const Text(
                          'Arts & Humanities',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Class Type',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      width: 130,
                      height: 37,
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      decoration: BoxDecoration(
                        // ignore: prefer_const_constructors
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        underline: const SizedBox(),
                        style: const TextStyle(color: Colors.white),
                        dropdownColor: Colors.purple,
                        iconEnabledColor: Colors.white,
                        items: const <DropdownMenuItem<String>>[
                          DropdownMenuItem<String>(
                            value: 'Group Study',
                            child: Text('Group Study'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Group Tutions',
                            child: Text('Group Tutions'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Online Classes',
                            child: Text('Online Classes'),
                          ),
                        ],
                        onChanged: (String? newValue) {
                          // Handle class selection here
                        },
                        hint: const Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            'Group Study',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 92,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  "Art & Humanities",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.purple,
                  ),
                ),
              ),
              SizedBox(
                width: 100,
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
              height: 160,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: course.length,
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
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-4.0, -4.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0)
                            ]),
                        width: 140,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              course[index]['image']!,
                              width: 150,
                              height: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height / 13,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      course[index]['title']!,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.purple,
                                      ),
                                    ),
                                    // const SizedBox(height: 12),
                                    Text(
                                      course[index]['duration']!,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
                activeColor: Colors.purple,
              ),
              const Text(
                "Are you sure with selected classes ?",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 40,
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            width: 300,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyClassesScreen()));
              },
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Book Class Now',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
