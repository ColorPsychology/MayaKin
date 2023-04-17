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
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 12,
              ),
              child: MayaKinListItem(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 12,
              ),
              child: MayaKinListItem(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 12,
              ),
              child: MayaKinListItem(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 12,
              ),
              child: MayaKinListItem(),
            ),
          ],
        ),
      ),
    );
  }
}

class MayaKinListItem extends StatelessWidget {
  const MayaKinListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          width: 1,
          color: KinColors.customborderGrey,
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border),
                  color: KinColors.customTurquise,
                  iconSize: 24,
                ),
                const Text(
                  "홍길동",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: KinColors.textBlack70,
                  ),
                ),
              ],
            ),
            Container(
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: KinColors.backgroundGrey,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "217",
                      style: TextStyle(
                        color: KinColors.textBlack80,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "13",
                      style: TextStyle(
                        color: KinColors.textBlack80,
                        fontSize: 17,
                      ),
                    ),
                    Icon(
                      Icons.square_rounded,
                      color: Colors.red,
                      size: 29,
                    ),
                    Icon(
                      Icons.square_rounded,
                      color: Colors.blue,
                      size: 29,
                    ),
                  ],
                ),
              ),
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
