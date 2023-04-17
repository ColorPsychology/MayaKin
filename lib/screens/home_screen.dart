import 'package:flutter/material.dart';
import 'package:mayakin/extensions/colors+.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "MayaKin",
              style: TextStyle(
                color: KinColors.textBlack100,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {
                print("hi");
              },
              icon: const Icon(Icons.settings),
              color: KinColors.grey50,
              iconSize: 24,
            )
          ],
        ),
      ),
    );
  }
}
