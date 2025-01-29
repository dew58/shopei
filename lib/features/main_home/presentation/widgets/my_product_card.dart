// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: productCardList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return myCard(context, productCardList[index]);
        },
      ),
    );
  }

  Widget myCard(BuildContext context, dynamic element) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.4,
            width: MediaQuery.sizeOf(context).width * 0.5,
          ),
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                element.images[0].replaceAll('["', '').replaceAll('"]', ''),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ),
          Positioned(
              bottom: 0,
              child: Column(
                children: [
                  Text(element.title),
                  Text(element.price.toString()),
                ],
              )),
        ],
      ),
    );
  }
}
