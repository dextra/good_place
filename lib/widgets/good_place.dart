import 'package:flutter/material.dart';
import 'package:good_place/utils/assets.dart';
import 'package:good_place/widgets/button.dart';
import 'package:good_place/widgets/label.dart';

class GoodPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Assets.heartBallon,
              height: 100,
            ),
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label(
                  text: 'Comitê',
                  labelType: LabelType.bigTitleBold,
                ),
                Label(
                  text: 'liga do bem',
                  labelType: LabelType.bigTitle,
                ),
                SizedBox(height: 50),
                Button(
                  label: 'Fale conosco',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
        SizedBox(width: 50),
        Image.asset(
          Assets.goodPlacePeople,
          height: MediaQuery.of(context).size.height * 0.7,
        ),
      ],
    );
  }
}
