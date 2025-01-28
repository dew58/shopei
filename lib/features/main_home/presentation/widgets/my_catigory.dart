import 'package:flutter/material.dart';
import 'package:shopie/core/themes/my_colors.dart';
import 'package:shopie/core/themes/text_themes.dart';

class MyCatigory extends StatelessWidget {
  const MyCatigory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          myBox(context, "All", false),
          myBox(context, "Tshirts", true),
          myBox(context, "Jeans", false),
          myBox(context, "Shoes", false)
        ],
      ),
    );
  }

  Widget myBox(BuildContext context, String name, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
            border: Border.all(color: MyColors.white3, width: 1.5),
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? MyColors.black9 : MyColors.white0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              name,
              style: MyStyle.mediam16white.copyWith(
                  color: isSelected ? MyColors.white0 : MyColors.black9),
            ),
          ),
        ),
      ),
    );
  }
}
