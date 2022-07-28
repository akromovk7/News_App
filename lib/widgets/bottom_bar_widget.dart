import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/constants/color_const.dart';
import 'package:news_app/core/constants/icon_const.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
        height: 66.h,
        width: 289.w,
        child: TabBar(
          labelColor: ConsColors.kBlackText,
          unselectedLabelColor: ConsColors.kGrey,
          indicator: const UnderlineTabIndicator(
              borderSide:
                  BorderSide(color: ConsColors.kWhite, width: 0.0)),
          indicatorColor: ConsColors.kWhite,
          tabs: <Widget>[
            Tab(
              icon: ConsIcons.home,
              text: "Home",
            ),
            Tab(
              icon: ConsIcons.like,
              text: "Favorite",
            ),
            Tab(
              icon: ConsIcons.smile,
              text: "Profile",
            ),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
