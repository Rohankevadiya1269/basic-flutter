import 'package:flutter/material.dart';
import 'package:learning_app/bottom_nav_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool _isChecked = false;

  int _selectedChipIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.purple,
              )),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Learning App',
                style: TextStyle(
                  fontSize: 33,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 26),
              Image.asset(
                'assets/background/bg_screen4.png',
                width: 370,
                height: 200,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Select your course level',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  ChoiceChip(
                    label: const Text('Beginner'),
                    selected: _selectedChipIndex == 0,
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedChipIndex = selected ? 0 : -1;
                      });
                    },
                    selectedColor: const Color.fromARGB(255, 156, 39, 176),
                    labelStyle: TextStyle(
                      color: _selectedChipIndex == 0
                          ? Colors.white
                          : Colors.purple,
                    ),
                    backgroundColor:
                        _selectedChipIndex == 0 ? Colors.purple : Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.purple, width: 2),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ChoiceChip(
                    label: const Text('Intermediate'),
                    selected: _selectedChipIndex == 1,
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedChipIndex = selected ? 1 : -1;
                      });
                    },
                    selectedColor: Colors.purple,
                    labelStyle: TextStyle(
                        color: _selectedChipIndex == 1
                            ? Colors.white
                            : Colors.purple),
                    backgroundColor:
                        _selectedChipIndex == 1 ? Colors.purple : Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.purple, width: 2),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ChoiceChip(
                    label: const Text('Expert'),
                    selected: _selectedChipIndex == 2,
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedChipIndex = selected ? 2 : -1;
                      });
                    },
                    selectedColor: Colors.purple,
                    labelStyle: TextStyle(
                      color: _selectedChipIndex == 2
                          ? Colors.white
                          : Colors.purple,
                    ),
                    backgroundColor:
                        _selectedChipIndex == 2 ? Colors.purple : Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.purple, width: 2),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                const Text(
                  "Are you sure ?",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                )
              ]),
              const SizedBox(height: 24),
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNvaBar()));
                  },
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
