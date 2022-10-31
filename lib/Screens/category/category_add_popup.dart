import 'package:flutter/material.dart';
import 'package:sample/Models/Category/category_model.dart';

Future<void> showCategoryAddPopup(BuildContext context) async {
  showDialog(
    context: context,
    builder: (ctx) {
      return SimpleDialog(
        title: const Text("Add Category"),
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  gapPadding: 10,
                ),
                label: Text("Category"),
              ),
            ),
          ),
          Row(
            children: const [
              RadioButton(
                  title: "Income",
                  type: CategoryType.income,
                  selectedCategoryType: CategoryType.income),
              RadioButton(
                  title: "Expence",
                  type: CategoryType.expense,
                  selectedCategoryType: CategoryType.income),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Add"),
            ),
          ),
        ],
      );
    },
  );
}

class RadioButton extends StatelessWidget {
  final String title;
  final CategoryType type;
  final CategoryType selectedCategoryType;

  const RadioButton({
    super.key,
    required this.title,
    required this.type,
    required this.selectedCategoryType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<CategoryType>(
          value: type,
          groupValue: CategoryType.income,
          onChanged: (value) {
            value = type;
          },
        ),
        Text(title)
      ],
    );
  }
}
