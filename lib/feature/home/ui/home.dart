import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:myshop/constant/image.dart';
import 'package:myshop/feature/home/repo/dresslist.dart';
import 'package:myshop/widget/dress.dart';
import 'package:myshop/widget/headofScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color(0xffF9F9F9),
      ),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 170,
          flexibleSpace: Container(
            width: double.infinity, // Full width of the screen
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.homefirst),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top banner image

                const Gap(14),

                // First section heading
                const HeadOfDress(
                  head1: "Sale\n",
                  head2: "Super summer sale",
                ),
                const Gap(10),

                // Horizontal dress list for sale
                SizedBox(
                  height: 280, // Constrain height for the ListView
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DressRepo.dressList.length,
                    itemBuilder: (context, index) {
                      return DressWidget(
                        imageSrc: DressRepo.dressList[index].image.toString(),
                      );
                    },
                  ),
                ),
                const Gap(23),

                // Second section heading
                const HeadOfDress(
                  head1: "New\n",
                  head2: "You’ve never seen it before!",
                ),
                const Gap(10),

                // Horizontal dress list for new items
                SizedBox(
                  height: 280, // Constrain height for the ListView
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DressRepo.dressList.length,
                    itemBuilder: (context, index) {
                      return DressWidget(
                        imageSrc: DressRepo.dressList[index].image.toString(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
