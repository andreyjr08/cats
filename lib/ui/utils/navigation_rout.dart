import 'package:flutter/material.dart';

class NavigationRout {
  void redirectPageWidget(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  void redirectNameRoute(BuildContext context, String ruta) {
    Navigator.pushNamed(context, ruta);
  }
}
