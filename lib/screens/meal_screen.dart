import 'package:flutter/material.dart';
import 'package:meal_app/contants.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/model/category_model.dart';
import 'package:meal_app/model/meal_model.dart';
import 'package:meal_app/widgets/customText.dart';

import '../widgets/meal_item.dart';

class MealScreen extends StatelessWidget {
  CategoryModel categoryModel;
  MealScreen({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    List<MealModel> mealByIdList = mealList
        .where((meal) => meal.categoryNumber == categoryModel.id)
        .toList();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        backgroundColor: Colors.blueGrey,
        title: Text(
          categoryModel.name,
          style: TextStyle(
            color: whiteColor,
            fontSize: fontSize25,
            fontWeight: fontWeightBold,
          ),
        ),
        centerTitle: true,
      ),
      body: mealByIdList.isEmpty
          ? Center(
              child: CustomText(
                title: "No Meals Found",
                color: blackColor,
                fontSize: fontSize25,
              ),
            )
          : ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 220),
                  child: MealItem(mealModel: mealByIdList[index]),
                );
              },

              itemCount: mealByIdList.length,
            ),
    );
  }
}
