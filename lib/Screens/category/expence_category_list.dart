import 'package:flutter/material.dart';

class ExpenceCategoryList extends StatelessWidget {
  const ExpenceCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Expence Category ${index + 1}"),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemCount: 100,
    );
  }
}
