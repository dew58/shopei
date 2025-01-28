import 'package:flutter/material.dart';
import 'package:shopie/core/constants/main_texts.dart';
import 'package:shopie/core/helper/spacer.dart';
import 'package:shopie/core/themes/my_colors.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.065,
          width: MediaQuery.sizeOf(context).width * 0.75,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: MyColors.white3,
            ),
            color: MyColors.white0,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Image.asset("assets/icons/Search.png"),
                horizontalSpace(10),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.55,
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: MainTexts.searchBar,
                    border: InputBorder.none,
                  )),
                ),
                Spacer(),
                Image.asset("assets/icons/Mic.png")
              ],
            ),
          ),
        ),
        Spacer(),
        Container(
          height: MediaQuery.sizeOf(context).height * 0.065,
          width: MediaQuery.sizeOf(context).width * 0.15,
          decoration: BoxDecoration(
            color: MyColors.black9,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Image.asset("assets/icons/Filter.png"),
          ),
        )
      ],
    );
  }
}
