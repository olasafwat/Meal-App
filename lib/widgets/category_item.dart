import 'package:flutter/material.dart';
import 'package:meal_app/contants.dart';
import 'package:meal_app/model/category_model.dart';
import 'package:meal_app/model/meal_model.dart';
import 'package:meal_app/screens/meal_screen.dart';
import 'package:meal_app/widgets/customText.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel categoryModel;

  CategoryItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) {
              return MealScreen(categoryModel: categoryModel);
            },
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius10),
          //category image
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(categoryModel.image),
              ),
            ),
            //category name
            child: Container(
              alignment: Alignment.bottomCenter,
              color: blueGreyColor,
              width: double.infinity,
              height: 35,
              child: CustomText(
                title: categoryModel.name,
                color: whiteColor,
                fontWeight: fontWeightBold,
                fontSize: fontSize25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
