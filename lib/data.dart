import 'model/category_model.dart';
import 'model/meal_model.dart';

List<CategoryModel> categoryList = [
  CategoryModel(id: "c1", name: "Chinese", image: "images/chinese.jpg"),
  CategoryModel(id: "c2", name: "Indian", image: "images/indian.jpg"),
  CategoryModel(id: "c3", name: "Oriental Meals", image: "images/oriental.jpg"),
  CategoryModel(id: "c4", name: "Pasta", image: "images/pasta.jpg"),
  CategoryModel(id: "c5", name: "Sandwiches", image: "images/sand.jpg"),
  CategoryModel(id: "c6", name: "Salads", image: "images/salad.jpg"),
  CategoryModel(id: "c7", name: "Rice Dishes", image: "images/Rice.jpg"),
  CategoryModel(id: "c8", name: "Dessert", image: "images/desatr.jpg"),
];

List<MealModel> mealList = [
  MealModel(
    id: "m1",
    title: "Lamp Chops",
    imageUrl: "images/lampchops.jpg",
    price: "150",
    time: "35",
    description:
        "Fillet Steak Round 275gm,Topped With Bron Pepper Sauce Served With Your Choice Of 2 Sides",
    categoryNumber: "c3",
  ),
  MealModel(
    id: "m2",
    title: "Butter Chicken",
    imageUrl: "images/butterchicken.jpg",
    price: "90",
    time: "25",
    description: "",
    categoryNumber: "c2",
  ),
  MealModel(
    id: "m3",
    title: "Alfredo",
    imageUrl: "images/alfredo.jpg",
    price: "60",
    time: "25",
    description: "",
    categoryNumber: "c4",
  ),
  MealModel(
    id: "m4",
    title: "Steak",
    imageUrl: "images/steak.jpg",
    price: "150",
    time: "30",
    description: "",
    categoryNumber: "c3",
  ),
  MealModel(
    id: "m5",
    title: "Smoked Cheesy ",
    imageUrl: "images/smoked_cheesy.jpg",
    price: "90",
    time: "25",
    description: "",
    categoryNumber: "c7",
  ),
  MealModel(
    id: "m6",
    title: "Lamp Biryani",
    imageUrl: "images/lamp_biryani.jpg",
    price: "90",
    time: "30",
    description: "",
    categoryNumber: "c2",
  ),
  MealModel(
    id: "m7",
    title: "Shish Tawook Rice",
    imageUrl: "images/shish_Tawook.jpg",
    price: "99",
    time: "30",
    description: "",
    categoryNumber: "c7",
  ),
  MealModel(
    id: "m8",
    title: "Lamp Shank",
    imageUrl: "images/lamp_shank.jpg",
    price: "130",
    time: "35",
    description: "",
    categoryNumber: "c3",
  ),
];
