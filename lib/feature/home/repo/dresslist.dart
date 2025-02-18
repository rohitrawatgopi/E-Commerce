import 'package:myshop/constant/image.dart';
import 'package:myshop/feature/home/model/dress.dart';

class DressRepo {
  static List<DressModel> dressList = [
    DressModel(
      discountPercent: 15.0,
      image: AppImages.dress1,
      rate: 4.0,
      quantity: 5,
      dressName: 'Floral Summer Dress',
      category: 'Casual',
      realPrice: 60.0,
      discountPrice: 51.0,
      isFav: false,
    ),
    DressModel(
      discountPercent: 20.0,
      image: AppImages.dress2,
      rate: 4.5,
      quantity: 10,
      dressName: 'Elegant Evening Gown',
      category: 'Formal',
      realPrice: 120.0,
      discountPrice: 96.0,
      isFav: true,
    ),
    DressModel(
      discountPercent: 10.0,
      image: AppImages.dress3,
      rate: 3.8,
      quantity: 8,
      dressName: 'Casual Denim Dress',
      category: 'Casual',
      realPrice: 40.0,
      discountPrice: 36.0,
      isFav: true,
    ),
    DressModel(
      discountPercent: 25.0,
      image: AppImages.dress4,
      rate: 5.0,
      quantity: 3,
      dressName: 'Chic Party Dress',
      category: 'Party',
      realPrice: 80.0,
      discountPrice: 60.0,
      isFav: false,
    ),
    DressModel(
      discountPercent: 30.0,
      image: AppImages.dress5,
      rate: 4.2,
      quantity: 7,
      dressName: 'Beach Cover-Up',
      category: 'Beachwear',
      realPrice: 30.0,
      discountPrice: 21.0,
      isFav: true,
    ),
  ];

  // Example of accessing the list
}
