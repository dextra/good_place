import 'package:dashbook/dashbook.dart';
import 'package:good_place/widgets/label.dart';

class LabelStory {
  final Dashbook dashbook;

  LabelStory(this.dashbook) {
    dashbook.storiesOf('Label').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return Label(
          text: 'Exampleee',
          labelType: ctx.listProperty(
            'type',
            LabelType.text,
            LabelType.values,
          ),
        );
      },
    );
  }
}
