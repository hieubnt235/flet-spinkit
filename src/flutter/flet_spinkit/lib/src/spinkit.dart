import 'package:flet/flet.dart';
import 'package:flutter/material.dart';

class FletSpinkitControl extends StatelessWidget {
  final Control? parent;
  final Control control;

  const FletSpinkitControl({
    super.key,
    required this.parent,
    required this.control,
  });

  @override
  Widget build(BuildContext context) {
    String text = control.attrString("value", "abc")!;
    Widget myControl = Text(text);

    return constrainedControl(context, myControl, parent, control);
  }
}
