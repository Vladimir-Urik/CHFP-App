import 'package:flutter/material.dart';
import '../enums/inputtype.dart';

class Input extends StatelessWidget {

  const Input({
    super.key,
    this.type,
    this.hint,
    this.label
  });

  final InputType? type;
  final String? hint;
  final String? label;

  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecoration = InputDecoration(
        hintText: hint ?? "",
        border: InputBorder.none,
        hintStyle: const TextStyle(color: Colors.grey));

    const textStyle = TextStyle(fontSize: 16.0, color: Colors.indigo);
    Widget labelWidget = Text(
      label ?? "",
      style: const TextStyle(
        fontSize: 18.0,
        color: Colors.indigo,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.left,
    );

    Widget? input = TextFormField();

    switch (type ?? InputType.text) {
      case InputType.text:
        input = TextFormField(
          decoration: inputDecoration,
          style: textStyle,
          textAlign: TextAlign.left,
        );
        break;

      case InputType.password:
        input = TextFormField(
          decoration: inputDecoration,
          style: textStyle,
          textAlign: TextAlign.left,
          obscureText: true,
        );
        break;
    }

    return Column(
      children: <Widget>[
        labelWidget,
        const SizedBox(height: 10),
        Container(     // Background
          color:Theme.of(context).secondaryHeaderColor,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 20.0
            ),
            child: input,
          )
        )
      ],
    );
  }

}