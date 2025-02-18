import 'package:flutter/material.dart';
import 'package:myshop/feature/shop/repo/shopRepo.dart';
import 'package:myshop/style/text.dart';
import 'package:myshop/widget/appbar.dart';

class Categories2Screen extends StatelessWidget {
  const Categories2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 56),
          child: CustomAppBar(title: "Categories")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Choose category",
              style: AppFontStyle.Font14GreynNormal,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: ShopRepo.categoryL.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 12),
                        child: Text(
                          textAlign: TextAlign.center,
                          ShopRepo.categoryL[index],
                          style: AppFontStyle.Font16BlackNormal,
                        ),
                      ),
                      Divider(
                        thickness: 0.2,
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
