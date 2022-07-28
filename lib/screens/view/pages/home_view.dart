import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/base/size_extension.dart';
import 'package:news_app/core/components/text_styles.dart';
import 'package:news_app/core/constants/icon_const.dart';
import 'package:news_app/screens/cubit/main_cubit.dart';
import 'package:news_app/screens/state/main_state.dart';
import 'package:news_app/widgets/bottom_bar_widget.dart';
import 'package:news_app/widgets/button_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: CupertinoSearchTextField(
                      prefixIcon: ConsIcons.search,
                      prefixInsets:
                          const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      borderRadius: BorderRadius.all(Radius.circular(16.0.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0.w, vertical: 8.0.h),
                      placeholder: "Dogecoin to the Moon...",
                      placeholderStyle: FontStyles.search,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Latest News", style: FontStyles.header),
                        InkWell(
                          child: Row(
                            children: [
                              Text("See All", style: FontStyles.textButton),
                              SizedBox(width: 16.0.w),
                              ConsIcons.arrowRight
                            ],
                          ),
                          onTap: () => context.read<MainCubit>().changeState(SearchState()),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 8.0.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 8.w);
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          height: 240.h,
                          width: 321.w,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/back.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0.r),
                            ),
                          ),
                        );
                      },
                      itemCount: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0.h),
                    child: SizedBox(
                      height: 32,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return MyElevetedButton(
                              currentPage: context.watch<MainCubit>().current,
                              onpressed: () {
                                context.read<MainCubit>().changeCurrent(index);
                              },
                              text: context.watch<MainCubit>().category[index],
                              index: index);
                        },
                        itemCount: context.watch<MainCubit>().category.length,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.height,
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      reverse: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 8.w);
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            height: 128.h,
                            width: 345.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/back.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0.r),
                              ),
                            ),
                          );
                        },
                        itemCount: 20,
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const BottomBarWidget());
  }
}
