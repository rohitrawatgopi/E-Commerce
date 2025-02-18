class DressModel {
  final double discountPercent;
  final String image;
  final double rate;
  final int quantity;
  final String dressName;
  final String category;
  final double realPrice;
  final double discountPrice;
  final bool isFav;

  DressModel({
    required this.discountPercent,
    required this.image,
    required this.rate,
    required this.quantity,
    required this.dressName,
    required this.category,
    required this.realPrice,
    required this.discountPrice,
    required this.isFav,
  });

  // Optional: A method to calculate the discounted price
  double getDiscountedPrice() {
    return realPrice - (realPrice * discountPercent / 100);
  }

  @override
  String toString() {
    return 'Dress{dressName: $dressName, category: $category, realPrice: $realPrice, discountPrice: $discountPrice, isFav: $isFav}';
  }
}
