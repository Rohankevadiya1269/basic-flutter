import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/count_example.dart';
import 'package:state_management/multiprovider.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    super.initState();
    final counter = Provider.of<CounterExample>(context, listen: false);
    Timer.periodic(const Duration(seconds: 5), (timer) {
      counter.setIncrement();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Here we are creating a variable where we are storing the current state
    // in the provider method we need to call the class which we need to access
    final counter = Provider.of<CounterExample>(context, listen: false);
    final cnter = Provider.of<CounterExample>(context, listen: false);
    debugPrint("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Provider Example",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        // consumer is used to build only the specific widget and not the whole screen

        child: Consumer<CounterExample>(builder: (context, value, child) {
          // The print method is used to ensure that only the text widget is rebuilt

          debugPrint("--------***********----------");
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${value.count}",
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
              ),
              Text(
                "${cnter.cnt}",
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 40),
              ),
              const SizedBox(
                height: 55,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Multiproviderpage()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple)),
                  child: const Icon(
                    Icons.navigate_next_sharp,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // This method is created in the count example class which is used to increase the integer
            counter.incrementCnt();
          },
          backgroundColor: Colors.purple,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
