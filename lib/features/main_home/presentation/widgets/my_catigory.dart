// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:shopie/core/themes/my_colors.dart';
import 'package:shopie/core/themes/text_themes.dart';

class MyCatigory extends StatefulWidget {
  final List categoryList;

  const MyCatigory({
    super.key,
    required this.categoryList,
  });

  @override
  State<MyCatigory> createState() => _MyCatigoryState();
}

class _MyCatigoryState extends State<MyCatigory> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => myBox(context,
              widget.categoryList[index].name, selectedItem == index, index),
          itemCount: widget.categoryList.length),
    );
  }

  Widget myBox(BuildContext context, String name, bool isSelected, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedItem = index;
          });
        },
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
      ),
    );
  }
}
