import 'package:flutter/material.dart';
import 'package:meal_app/contants.dart';
import 'package:meal_app/model/meal_model.dart';

import 'customText.dart';
import 'rowCustom.dart';

class MealItem extends StatelessWidget {
  MealModel mealModel;
  MealItem({super.key, required this.mealModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //image
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(mealModel.imageUrl),
              ),
            ),
          ),
        ),

        //meal details
        Positioned(
          top: 160,
          left: 20,
          right: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius20),
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: CustomText(
                    title: mealModel.title,
                    color: blackColor,
                    fontWeight: fontWeightBold,
                    fontSize: fontSize20,
                  ),
                ),

                //price, cooking time
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      //price
                      RowCustom(
                        colorCircleAvatar: greenColor,
                        icon: Icons.attach_money,
                        numText: mealModel.price,
                        text: 'Price',
                      ),

                      //vertical line
                      Padding(
                        padding: EdgeInsets.only(bottom: 10, left: 20),
                        child: Container(
                          width: 1,
                          height: 35,
                          color: greyColor,
                        ),
                      ),

                      //cooking time
                      RowCustom(
                        colorCircleAvatar: orangeColor,
                        icon: Icons.access_time,
                        numText: "${mealModel.time} min",
                        text: 'Cooking Time',
                      ),
                    ],
                  ),
                ),

                //horizontal line
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: greyColor,
                  ),
                ),

                //description
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //text description
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                      child: CustomText(
                        title: "DESCRIPTION",
                        color: greyColor,
                        fontSize: fontSize15,
                        fontWeight: fontWeightBold,
                      ),
                    ),
                    //show description
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomText(
                        title: mealModel.description,
                        color: blackColor,
                        fontSize: fontSize13,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
