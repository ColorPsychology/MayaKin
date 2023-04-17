import 'package:flutter/material.dart';
import 'package:mayakin/extensions/colors+.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
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
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: AddButton(),
            )
          ],
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: KinColors.backgroundGreen,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        border: Border.all(
          width: 1,
          color: KinColors.customborderGreen,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8,
            ),
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: KinColors.customTurquise,
                borderRadius: BorderRadius.circular(17),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          const Text(
            "추가하기",
            style: TextStyle(
              color: KinColors.textBlack70,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
