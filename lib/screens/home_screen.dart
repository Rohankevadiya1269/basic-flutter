import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController =TextEditingController();
  @override
  void initState() {
    super.initState();
    getValue();
  }
  var nameValue =" No Name Saved";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: const Text(
          'Shared preference'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: ' Name ',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18)
              )
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(onPressed: () async{
            var name = nameController.text.toString();
            var prefs = await SharedPreferences.getInstance();
            prefs.setString(' Name ', name);
          },
           child:const Text('Save')
           ),
           const SizedBox(
            height: 15,
          ),
          Text(nameValue),
        ],
      ),
    );
  }
  
  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName  = prefs.getString(' Name ');
    nameValue = getName ?? "No Value Saved";

    setState(() {
      
    });
  }
}