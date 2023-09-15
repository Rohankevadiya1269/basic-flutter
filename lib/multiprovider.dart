import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/multiprovider_example.dart';
import 'package:state_management/page_1.dart';

class Multiproviderpage extends StatefulWidget {
  const Multiproviderpage({super.key});

  @override
  State<Multiproviderpage> createState() => _MultiproviderpageState();
}

class _MultiproviderpageState extends State<Multiproviderpage> {
  @override
  Widget build(BuildContext context) {
    debugPrint("------build--------");
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Page1()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          "Multiprovider",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MultiProviderExample>(builder: (context, value, child) {
              return Slider(
                  min: 0,
                  max: 1,
                  value: value.value,
                  onChanged: (val) {
                    debugPrint("$val");
                    value.setValue(val);
                  });
            }),
            Consumer<MultiProviderExample>(builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.value)),
                      child: const Center(
                          child: Text(
                        "Container 1",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(value.value)),
                      child: const Center(
                          child: Text(
                        "Container 2",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                    ),
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
