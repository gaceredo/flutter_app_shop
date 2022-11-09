import 'package:flutter/material.dart';
import '../../../model/categories_model.dart';
import 'category_item.dart';

class Categories extends StatelessWidget {
  // categories
  final List<CategoriesModel> categories;
  // return on select category
  final Function(CategoriesModel) onSelectCategory;
  int selected;

  Categories(
      {super.key,
      required this.categories,
      required this.onSelectCategory,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final category = categories[index];
            return CategoryItem(
              title: category.name,
              image: category.image,
              isSelected: index == selected,
              onTap: () {
                onSelectCategory(category);
              },
            );
          }),
    );
  }
}
