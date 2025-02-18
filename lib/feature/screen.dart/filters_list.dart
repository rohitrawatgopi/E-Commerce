import 'package:flutter/material.dart';
import 'package:myshop/widget/second_btw.dart';

class FilterListScreen extends StatefulWidget {
  FilterListScreen({super.key});

  @override
  State<FilterListScreen> createState() => _FilterListScreenState();
}

class _FilterListScreenState extends State<FilterListScreen> {
  final List<Map<String, dynamic>> brands = [
    {'name': 'adidas', 'selected': false},
    {'name': 'adidas Originals', 'selected': true},
    {'name': 'Blend', 'selected': false},
    {'name': 'Boutique Moschino', 'selected': false},
    {'name': 'Champion', 'selected': false},
    {'name': 'Diesel', 'selected': false},
    {'name': 'Jack & Jones', 'selected': true},
    {'name': 'Naf Naf', 'selected': false},
    {'name': 'Red Valentino', 'selected': false},
    {'name': 's.Oliver', 'selected': true},
  ];
  void _onBrandSelected(int index, bool? selected) {
    setState(() {
      brands[index]['selected'] = selected!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brand Selector'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            // Brand list
            Expanded(
              child: ListView.builder(
                itemCount: brands.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(
                      brands[index]['name'],
                      style: TextStyle(
                        color: brands[index]['selected']
                            ? Colors.red
                            : Colors.black,
                        fontWeight: brands[index]['selected']
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    value: brands[index]['selected'],
                    onChanged: (bool? value) {
                      _onBrandSelected(index, value);
                    },
                    activeColor: Colors.red, // Color for the selected checkbox
                    controlAffinity: ListTileControlAffinity
                        .trailing, // Aligns the checkbox on the right
                  );
                },
              ),
            ),

            Row(
              children: [
                AppSecondaryButton(buttonName: "Discard", callback: () {}),
                AppSecondaryButton(buttonName: "Apply", callback: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
