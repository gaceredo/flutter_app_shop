import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_flutter/model/products_model.dart';
import 'package:store_flutter/page/home/widgets/categories.dart';
import 'package:store_flutter/page/home/widgets/discounts_banner.dart';
import 'package:store_flutter/page/home/widgets/list_items.dart';
import 'package:store_flutter/page/home/widgets/search_bar.dart';
import 'package:store_flutter/utils/shimmer_loading.dart';
import 'package:store_flutter/widgets/bottom_navigation_bar.dart';

import '../../model/categories_model.dart';
import '../../utils/app_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoriesModel> categories = [];
  List<ProductsModel> products = [];
  bool isLoading = false;

  @override
  void initState() {
    getCategories();
    super.initState();
  }

  void getCategories() async {
    var dio = Dio();
    final response = await dio.get(
      'https://api.escuelajs.co/api/v1/categories',
    );
    setState(() {
      categories = (response.data as List)
          .map((e) => CategoriesModel.fromJson(e))
          .toList();
      if (categories.isNotEmpty) {
        onSelectCategory(categories[0].id);
      }
    });
  }

  void onSelectCategory(int category) async {
    var dio = Dio();
    setState(() {
      isLoading = true;
    });
    final response = await dio.get(
      'https://api.escuelajs.co/api/v1/categories/$category/products',
    );
    setState(() {
      isLoading = false;
      selectedCategory = category == 0 ? category : category - 1;
      products = (response.data as List)
          .map((e) => ProductsModel.fromJson(e))
          .toList();
    });
  }

  int selectedIndex = 0;
  int selectedCategory = 0; //New

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgApp,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SearchBar(),
              const SizedBox(
                height: 10,
              ),
              Categories(
                selected: selectedCategory,
                categories: categories,
                onSelectCategory: (category) {
                  onSelectCategory(category.id);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const DiscountsBanner(),
              const SizedBox(
                height: 25,
              ),
              ShimmerLoading(
                isLoading: isLoading,
                child: ListItems(products: products),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationCustomBar(
          selectedIndex: selectedIndex, onItemTapped: onItemTapped), //New
    );
  }
}
