import 'package:flutter/material.dart';
import 'package:meal_app/contants.dart';
import 'package:meal_app/widgets/category_item.dart';
import '../data.dart';
import '../widgets/customText.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          title: 'Meal App',
          color: whiteColor,
          fontWeight: fontWeightBold,
          fontSize: fontSize25,
        ),
        centerTitle: true,
        backgroundColor: blueGreyColor,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(categoryModel: categoryList[index]);
        },
        itemCount: categoryList.length,
      ),
    );
  }
}
