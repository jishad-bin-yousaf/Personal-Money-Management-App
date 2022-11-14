import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sample/Models/Category/category_model.dart';
import 'package:sample/Screens/category/category_add_popup.dart';
import 'package:sample/Screens/category/screen_category.dart';
import 'package:sample/Screens/home/widgets/bottom_navigation.dart';
import 'package:sample/Screens/transactions/screen_transactions.dart';
import 'package:sample/db/Category/category_db.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = const [
    ScreenTransactions(),
    ScreenCategory(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Money Manager"),
        backgroundColor: Color.fromARGB(255, 39, 176, 176),
        centerTitle: true,
      ),
      bottomNavigationBar: const MoneyManagerBottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext context, int updatedIndex, _) {
              return _pages[updatedIndex];
            }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            if (selectedIndexNotifier.value == 0) {
              print("Something added in transactions");
            } else {
              print("Add category");
              showCategoryAddPopup(context);
            }
          },
          child: const Icon(Icons.add)),
    );
  }
}
