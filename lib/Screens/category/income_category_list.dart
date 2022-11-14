import 'package:flutter/material.dart';
import 'package:sample/Models/Category/category_model.dart';
import 'package:sample/db/Category/category_db.dart';

class IncomeCategoryList extends StatelessWidget {
  const IncomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: CategoryDb().incomeCategoryListListener,
      builder: (BuildContext ctx, List<CategoryModel> newList, Widget? _) {
        return ListView.separated(
          itemBuilder: (context, index) {
            final category = newList[index];
            return ListTile(
              title: Text(category.name),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: newList.length,
        );
      },
    );
  }
}
