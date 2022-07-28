import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/constants/color_const.dart';

class MyElevetedButton extends StatefulWidget {
  int index;
  VoidCallback onpressed;
  String text;
  int currentPage;
  MyElevetedButton(
      {required this.currentPage,required this.onpressed,
      required this.text,
      required this.index,
      Key? key})
      : super(key: key);

  @override
  State<MyElevetedButton> createState() => _MyElevetedButtonState();
}

class _MyElevetedButtonState extends State<MyElevetedButton> {
  int temp = 0;
  Color color = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: widget.onpressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: Size(90.w, 40.h),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          primary: widget.currentPage == widget.index
              ? color = ConsColors.kPrimaryColor
              : color = ConsColors.kButton,
        ),
        child: FittedBox(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              fontFamily: "Nunito",
              color: widget.currentPage == widget.index
                ? ConsColors.kWhite
                : ConsColors.kBlackText,
            ),
          ),
        ),
      ),
    );
  }
}