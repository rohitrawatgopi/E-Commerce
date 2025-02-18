import 'package:flutter/material.dart';
import 'package:myshop/constant/image.dart';
import 'package:myshop/feature/home/ui/home.dart';
import 'package:myshop/feature/shop/ui/categories.dart';

class BottomNavigatonBarScreen extends StatefulWidget {
  BottomNavigatonBarScreen({super.key});

  @override
  State<BottomNavigatonBarScreen> createState() =>
      _BottomNavigatonBarScreenState();
}

class _BottomNavigatonBarScreenState extends State<BottomNavigatonBarScreen> {
  int index = 0;
  List<Widget> widgetLsit = [
    HomeScreen(),
    CategoriesScreen(),
    Text("favorite"),
    Text("profile")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: index,
          onTap: (val) {
            index = val;
            setState(() {});
          },
          selectedItemColor: Color(0xFFDB3022),
          unselectedItemColor: Color(0xFF9B9B9B),
          backgroundColor: Colors.amber,
          items: [
            BottomNavigationBarItem(
              icon: index == 0
                  ? Image.asset(
                      AppImages.home,
                      width: 30,
                      height: 30,
                    )
                  : Image.asset(
                      AppImages.homeNo,
                      width: 30,
                      height: 30,
                    ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: index == 1
                  ? Image.asset(
                      AppImages.shop,
                      width: 30,
                      height: 30,
                    )
                  : Image.asset(
                      AppImages.shopNO,
                      width: 30,
                      height: 30,
                    ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
                icon: index == 2
                    ? Image.asset(
                        AppImages.bag,
                        width: 30,
                        height: 30,
                      )
                    : Image.asset(
                        AppImages.bagNo,
                        width: 30,
                        height: 30,
                      ),
                label: "Bag"),
            BottomNavigationBarItem(
                icon: index == 3
                    ? Image.asset(
                        AppImages.favorite,
                        width: 30,
                        height: 30,
                      )
                    : Image.asset(
                        AppImages.favoriteNO,
                        width: 30,
                        height: 30,
                      ),
                label: "Favoutites"),
            BottomNavigationBarItem(
                icon: index == 4
                    ? Image.asset(
                        AppImages.profile,
                        width: 30,
                        height: 30,
                      )
                    : Image.asset(
                        AppImages.profileNO,
                        width: 30,
                        height: 30,
                      ),
                label: "Profile"),
          ]),
      body: widgetLsit[index],
    );
  }
}
