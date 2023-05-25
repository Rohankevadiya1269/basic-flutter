import 'package:flutter/material.dart';

int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Person ${(index + 1)}'),
          leading: const Icon(Icons.assignment_ind_sharp),
          trailing: const Icon(Icons.access_time_filled_sharp),
          onTap: () {
            debugPrint('Person ${(index + 1)} Selected');
          },
        );
      },
    );
  }
}
