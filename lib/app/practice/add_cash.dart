import 'package:flutter/material.dart';

class AddCash extends StatefulWidget {
  const AddCash({super.key});

  @override
  State<AddCash> createState() => _AddCashState();
}

class _AddCashState extends State<AddCash> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a payment Method '),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Actions Performed');
              },
              icon: const Icon(Icons.add_comment))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/currencies.jpg'),
            // const Divider(color: Colors.black)
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(15.0),
              width: double.infinity,
              color: const Color(0xFF0B98AF),
              child: const Center(
                  child: Text(
                'This is a text widget of Container',
                style: TextStyle(color: Colors.white38, fontSize: 18.0),
              )),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: isSwitch ? Colors.greenAccent : Colors.deepPurple,
                ),
                onPressed: () {
                  debugPrint('Elevated Button');
                },
                child: const Text('Elevated Button')),
            OutlinedButton(
                onPressed: () {
                  debugPrint('Outlined  Button');
                },
                child: const Text('Outlined  Button')),
            TextButton(
                onPressed: () {
                  debugPrint('Text Button');
                },
                child: const Text('Text Button')),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is a Row');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.align_horizontal_left_sharp,
                      color: Colors.deepPurple),
                  Text(
                    'Row Widget',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  Icon(
                    Icons.align_horizontal_right,
                    color: Colors.deepPurple,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Image.network(
                'https://c8.alamy.com/comp/MMDEP2/close-up-variations-of-indian-currency-notes-nobody-money-concept-MMDEP2.jpg')
          ],
        ),
      ),
    );
  }
}
