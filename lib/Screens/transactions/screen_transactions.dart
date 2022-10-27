import 'package:flutter/material.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Text(
                  "${index + 1} Dec\n2020",
                  textAlign: TextAlign.center,
                ),
              ),
              title: Text("Rs. ${index + 1}8$index"),
              subtitle: Text("Travel"),
            ),
          );
        },
        separatorBuilder: ((context, index) {
          return const SizedBox(
            height: 10,
          );
        }),
        itemCount: 10,
      ),
    );
  }
}
