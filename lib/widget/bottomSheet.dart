import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white10,
                  context: context,
                  builder: (context) {
                    return Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text("Select Size"),
                          Wrap(
                              children: List.generate(5, (context) {
                            return Container(
                              margin: EdgeInsets.all(8),
                              height: 40,
                              width: 100,
                              color: Colors.amber,
                            );
                          }))
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text("Show"))
        ],
      ),
    );
  }
}
