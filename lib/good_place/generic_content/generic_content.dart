import 'package:flutter/material.dart';
import 'package:good_place/widgets/base_scaffold.dart';
import 'package:good_place/widgets/label.dart';

class GenericContent extends StatelessWidget {
  final String title;
  final String? content;
  final String? imageUrl;

  const GenericContent({
    required this.title,
    this.content,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Center(
        child: Container(
          width: 1200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Label(
                text: title,
                labelType: LabelType.mediumTitle,
              ),
              SizedBox(height: 30),
              if (imageUrl != null && imageUrl!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Image.asset(imageUrl!),
                ),
              if (content != null)
                Align(
                  alignment: Alignment.topLeft,
                  child: Label(
                    text: content!,
                    labelType: LabelType.mediumText,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
