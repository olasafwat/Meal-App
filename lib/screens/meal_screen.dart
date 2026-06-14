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

  List<MealModel> mealByIdList = [];

  @override
  Widget build(BuildContext context) {
    for (MealModel mealModel in mealList) {
      if (mealModel.categoryNumber == categoryModel.id) {
        mealByIdList.add(mealModel);
      }
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        backgroundColor: blueNavyColor,
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
