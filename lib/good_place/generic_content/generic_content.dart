import 'package:flutter/material.dart';
import 'package:good_place/widgets/base_scaffold.dart';
import 'package:good_place/widgets/label.dart';

class GenericContent extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;

  const GenericContent({
    this.title,
    this.content,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Label(
              text: title,
              labelType: LabelType.mediumTitle,
            ),
            SizedBox(height: 30),
            if (imageUrl.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Center(child: Image.asset(imageUrl)),
              ),
            Label(
              text: content,
              labelType: LabelType.mediumText,
            ),
          ],
        ),
      ),
    );
  }
}
