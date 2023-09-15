import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/count_example.dart';
import 'package:state_management/multiprovider_example.dart';
import 'package:state_management/page_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //To use the provider it is necessary to return the app with ChangeNotifierProvider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterExample()),
        ChangeNotifierProvider(create: (_) => MultiProviderExample())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const Page1(),
      ),
    );
  }
}
