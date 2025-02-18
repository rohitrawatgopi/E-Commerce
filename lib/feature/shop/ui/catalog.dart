import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myshop/constant/image.dart';
import 'package:myshop/feature/shop/repo/shopRepo.dart';
import 'package:myshop/style/text.dart';
import 'package:myshop/widget/appbar.dart';
import 'package:myshop/widget/dress.dart';
import 'package:myshop/widget/dresswidgetvertical.dart';

class CatalogScreen extends StatefulWidget {
  CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  List<String> allCategory = ["T-shirts", "Crop tops", "Blouses", "Shirts"];

  bool isVertical = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 232, 232),
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 56),
            child: CustomAppBar(title: "Women’s tops")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 35,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allCategory.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 30,
                        width: 100,
                        margin: EdgeInsets.only(
                            right:
                                8), // Adds horizontal margin to center the container
                        // Adds vertical padding to adjust the text position
                        alignment: Alignment
                            .center, // Aligns the text in the center of the container
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: Text(
                          allCategory[index],
                          style: AppFontStyle.Font14White14200,
                        ),
                      );
                    }),
              ),
              Gap(15),
              Row(
                children: [
                  Image.asset(
                    AppImages.filters,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                  Gap(10),
                  Text("Filters"),
                  Spacer(),
                  Image.asset(
                    AppImages.lowHigh,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                  Gap(10),
                  Text("Price: lowest to high"),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isVertical = !isVertical;
                      });
                    },
                    child: Image.asset(
                      AppImages.changeaxisImage,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Gap(15),
              isVertical
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: allCategory.length,
                          itemBuilder: (context, index) {
                            return CustomDressWidgetVertical(
                                imagSrc: ShopRepo.categoryList[index].url);
                          }),
                    )
                  : Expanded(
                      child: GridView.builder(
                          itemCount: allCategory.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 17.0,
                            childAspectRatio: 0.6,
                            crossAxisSpacing: 1,
                          ),
                          itemBuilder: (context, index) => DressWidget(
                              imageSrc: ShopRepo.categoryList[index].url)),
                    )
            ],
          ),
        ));
  }
}
