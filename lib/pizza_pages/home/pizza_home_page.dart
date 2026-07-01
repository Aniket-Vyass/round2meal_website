import 'package:flutter/material.dart';
import 'package:round2meal_website/pizza_pages/home/widgets/category_list.dart';
import 'package:round2meal_website/pizza_pages/home/widgets/custom_app_bar.dart';
import 'package:round2meal_website/pizza_pages/home/widgets/header_widget.dart';
import 'package:round2meal_website/pizza_pages/home/widgets/hot_deals_widget.dart';
import 'package:round2meal_website/pizza_pages/home/widgets/product_list.dart';

class PizzaHomePage extends StatelessWidget {
  const PizzaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: SafeArea(
        child: Column(
          spacing: 20,
          children: [
            const CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    const HeaderWidget(),
                    CategoryList(),
                    ProductList(),
                    const HotDealsWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
