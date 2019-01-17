import 'package:flutter/widgets.dart';
import '../widgetBase/text.dart';

class Routes {
  static Map<String, WidgetBuilder> getAll() {
    return {
      "TextPage": (context) => TextPage(),
    };
  }
}
