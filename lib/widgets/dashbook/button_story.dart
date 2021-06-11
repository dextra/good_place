import 'package:dashbook/dashbook.dart';
import 'package:good_place/widgets/button.dart';

class ButtonStory {
  final Dashbook dashbook;

  ButtonStory(this.dashbook) {
    dashbook.storiesOf('Button').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return Button(
          label: 'Exampleee',
          onTap: () {},
          type: ctx.listProperty('type', ButtonType.outline, ButtonType.values),
        );
      },
    );
  }
}
