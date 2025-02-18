import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myshop/style/text.dart';
import 'package:myshop/widget/backbtn.dart';
import 'package:myshop/widget/second_btw.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues rangeValues = RangeValues(78, 143);
  final List<Color> _colors = [
    Colors.black,
    Colors.white,
    Colors.red,
    Colors.brown.shade200,
    Colors.amber.shade200,
    Colors.blue.shade900,
  ];
  final List<String> categories = ['All', 'Women', 'Men', 'Boys', 'Girls'];

  //
  int _selectedIndexCategory = 0;
  List<String> sizeList = ["XS", "M", "L", "XL"];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        centerTitle: true,
        leading: AppBackButton(),
        title: Text(
          "Filter",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            Text(
              "Price range",
              style: AppFontStyle.Font18Black500,
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(rangeValues.start.toString()),
                Text(rangeValues.end.toString()),
              ],
            ),
            RangeSlider(
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
              min: 50,
              max: 200,
              divisions: 100,
              values: rangeValues,
              labels: RangeLabels(
                  '${rangeValues.start.round()}', '${rangeValues.end.round()}'),
              onChanged: (val) {
                setState(() {
                  rangeValues = val;
                });
              },
            ),
            Text(
              "Colors",
              style: AppFontStyle.Font18Black500,
            ),
            Gap(20),
            Container(
              height: 40,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _colors.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _selectedIndex = index;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: _selectedIndex == index
                                ? Colors.red
                                : Colors.transparent,
                            width: 2.0, // Border width for the selected color
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: _colors[index],
                          radius: 24, // Adjust the size of the color circle
                          child: index == _selectedIndex
                              ? const Icon(Icons.check, color: Colors.black)
                              : null,
                          // Check icon for white color to differentiate it
                        ),
                      ),
                    );
                  }),
            ),
            Gap(20),
            Text(
              "Sizes",
              style: AppFontStyle.Font18Black500,
            ),
            Gap(20),
            Row(
              children: List.generate(sizeList.length, (value) {
                return Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 40,
                  height: 40,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black26)),
                  child: Center(child: Text(sizeList[value])),
                );
              }),
            ),
            Gap(20),
            Text(
              "Category",
              style: AppFontStyle.Font18Black500,
            ),
            Gap(20),
            Wrap(
                spacing: 10.0, // Space between buttons
                runSpacing: 10.0, // Space between rows
                children: List.generate(categories.length, (index) {
                  return InkWell(
                    onTap: () {
                      _selectedIndexCategory = index;
                      setState(() {});
                    },
                    child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: _selectedIndexCategory == index
                                ? const Color.fromARGB(255, 231, 68, 56)
                                : null,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: _selectedIndexCategory == index
                                ? AppFontStyle.Font14WhiteNormal
                                : AppFontStyle.Font14Black50,
                          ),
                        )),
                  );
                })),
            Text(
              "Brand",
              style: AppFontStyle.Font18Black500,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "adidas Originals, Jack & Jones, s.Oliver",
                  style: AppFontStyle.Font14GreynNormal,
                ),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppSecondaryButton(buttonName: "Discard", callback: () {}),
                AppSecondaryButton(buttonName: "Discard", callback: () {})
              ],
            ),
            Gap(20)
          ],
        ),
      ),
    );
  }
}
