import 'package:flutter/material.dart';
import 'package:sample/Screens/category/screen_category.dart';
import 'package:sample/Screens/home/widgets/bottom_navigation.dart';
import 'package:sample/Screens/transactions/screen_transactions.dart';

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
      bottomNavigationBar: const MoneyManagerBottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext context, int updatedIndex, _) {
              return _pages[updatedIndex];
            }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Something added");
          },
          child: const Icon(Icons.add)),
    );
  }
}
