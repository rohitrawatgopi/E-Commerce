import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myshop/feature/shop/repo/shopRepo.dart';
import 'package:myshop/feature/shop/ui/categories2.dart';
import 'package:myshop/style/text.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Categories",
            style: AppFontStyle.Font18Black800,
          ),
          centerTitle: true,
          leading: BackButton(),
          actions: [Icon(Icons.search)],
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            tabs: [
              Tab(
                child: Text(
                  "Women",
                  style: AppFontStyle.Font16BlackNormal,
                ),
              ),
              Tab(
                child: Text(
                  "Men",
                  style: AppFontStyle.Font16BlackNormal,
                ),
              ),
              Tab(
                child: Text(
                  "Kids",
                  style: AppFontStyle.Font16BlackNormal,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Gap(15),
            Container(
              height: 100,
              width: 343,
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "SUMMER SALES \n",
                          style: AppFontStyle.Font24White500),
                      TextSpan(
                          text: "Up to 50% off",
                          style: AppFontStyle.Font14White14200)
                    ])),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Categories2Screen()));
                  },
                  child: Text(
                    textAlign: TextAlign.end,
                    "view all",
                    style: AppFontStyle.Font16BlackNormal,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: ShopRepo.categoryList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 343,
                      height: 116,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                                style: AppFontStyle.Font18Black500,
                                textAlign: TextAlign.center,
                                ShopRepo.categoryList[index].name),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 171,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ShopRepo.categoryList[index].url),
                                      fit: BoxFit.cover)),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
