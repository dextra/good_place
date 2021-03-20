import 'package:dashbook/dashbook.dart';
import 'package:good_place/widgets/header.dart';

class HeaderStory {
  final Dashbook dashbook;

  HeaderStory(this.dashbook) {
    dashbook.storiesOf('Header').decorator(CenterDecorator()).add(
      'default',
      (ctx) {
        return Header();
      },
    );
  }
}
