import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/base/size_extension.dart';
import 'package:news_app/core/components/text_styles.dart';
import 'package:news_app/core/constants/icon_const.dart';
import 'package:news_app/screens/cubit/main_cubit.dart';
import 'package:news_app/widgets/bottom_sheet_widget.dart';
import 'package:news_app/widgets/button_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
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
                  child: SizedBox(
                    height: 32,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return MyElevetedButton(
                            currentPage: context.watch<MainCubit>().current2,
                            onpressed: () {
                              context.read<MainCubit>().changeCurrent2(index);
                              myBottomSheet(context);
                            },
                            text: context.watch<MainCubit>().category2[index],
                            index: index);
                      },
                      itemCount: context.watch<MainCubit>().category2.length,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Row(
                    children: [
                      Text("About 11,130,000 results for ",
                          style: FontStyles.searchHeader),
                      Text("COVID New Variant.",
                          overflow: TextOverflow.ellipsis,
                          style: FontStyles.searchHeader2)
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: context.height * 0.8,
                    child: ListView.separated(
                      reverse: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 8.w);
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          height: 128.h,
                          width: 345.w,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
