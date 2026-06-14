import 'package:flutter/material.dart';
import 'package:meal_app/contants.dart';
import 'package:meal_app/model/category_model.dart';
import 'package:meal_app/model/meal_model.dart';
import 'package:meal_app/screens/meal_screen.dart';
import 'package:meal_app/widgets/custom_text.dart';

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
            //category name , line , arrow
            child: Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                gradient: blueNavyGradientColor,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: goldColor,
                    width: 0.5,
                  ),
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //vertical line , category name, hint
                  Row(
                    children: [
                      //vertical line
                      Padding(
                        padding: const EdgeInsets.only(left: 18,right: 10),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15),
                          width: 2,
                          height: 20,
                          decoration: BoxDecoration(
                            color: darkRedColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      //category name, hint
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //category name
                          CustomText(
                            title: categoryModel.name,
                            color: whiteColor,
                            fontWeight: fontWeightBold,
                            fontSize: fontSize20,
                          ),
                          //hint
                          CustomText(
                            title: "Delicious ${categoryModel.name} Cuisine",
                            color: greyColor,
                            fontWeight: fontWeightBold,
                            fontSize: fontSize12,
                          ),
                        ],
                      ),
                    ],
                  ),

                  //arrow icon
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: darkRedColor,
                      radius: 18,
                      child: Icon(Icons.arrow_forward,size: 20,color: whiteColor,),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
