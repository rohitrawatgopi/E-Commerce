import 'package:myshop/constant/image.dart';
import 'package:myshop/feature/shop/model/category.dart';

class ShopRepo {
  static List<CategoryModel> categoryList = [
    CategoryModel(name: "New", url: AppImages.shopCategoryfirst),
    CategoryModel(name: "Clothes", url: AppImages.shopCategorysecond),
    CategoryModel(name: "Shoes", url: AppImages.shopCategorythird),
    CategoryModel(name: "Accessories", url: AppImages.shopCategoryfourth)
  ];

  static List<String> categoryL = [
    "Tops",
    "Shirts & Blouses",
    "Cardigans & Sweaters",
    "Knitwear",
    "Blazers",
    "Outerwear",
    "Pants",
    "Jeans",
    "Shorts",
    'Skirts',
    "Dresses"
  ];
}
