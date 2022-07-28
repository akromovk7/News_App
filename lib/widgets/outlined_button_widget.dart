import 'package:flutter/material.dart';
import 'package:news_app/core/components/text_styles.dart';

class MyOutlinedButton extends StatelessWidget {
  final String text;
  const MyOutlinedButton({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(text, style: FontStyles.reset),
      onPressed: () {},
      style: OutlinedButton.styleFrom(shape: StadiumBorder()),
    );
  }
}
