// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shopie/core/themes/my_colors.dart';
import 'package:shopie/core/themes/text_themes.dart';

class MyProductCard extends StatelessWidget {
  final List productCardList;
  const MyProductCard({
    super.key,
    required this.productCardList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      width: MediaQuery.sizeOf(context).width,
      child: MasonryGridView.count(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        itemCount: productCardList.length,
        itemBuilder: (context, index) {
          return myCard(context, productCardList[index]);
        },
      ),
    );
  }

  Widget myCard(BuildContext context, dynamic element) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.25,
          // width: MediaQuery.sizeOf(context).width * 0.5,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            element.images[0].replaceAll('["', '').replaceAll('"]', ''),
            // fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 10.w,
            right: 10.w,
            child: Container(
              height: 30.h,
              width: 30.h,
              decoration: BoxDecoration(
                color: MyColors.white0,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/icons/Heart1.png"),
            )),
        Positioned(
            bottom: 0,
            left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  element.title,
                  style: MyStyle.semibold16black,
                ),
                Text(
                  "\$" + element.price.toString(),
                  style: MyStyle.mediam12white.copyWith(color: MyColors.gray5),
                ),
              ],
            )),
      ],
    );
  }
}
