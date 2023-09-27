import 'package:flutter/material.dart';

import '../constant.dart';

class CardShoeWidget extends StatelessWidget {
  const CardShoeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 6,
          child: Stack(
            children: [
              Container(
                height: size.height / 3.5,
                width: size.width / 1.8,
                decoration: BoxDecoration(
                  color: mainGrey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      size.width / 40,
                    ),
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/nike_shoes.png',
                    ),
                  ),
                ),
              ),
              Positioned(
                right: size.width / 45,
                top: size.width / 45,
                child: Container(
                  width: size.width / 13,
                  height: size.width / 13,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      size: size.width / 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            'Nike InfinityRN 4',
            style: TextStyle(
                color: Colors.black,
                fontSize: size.width / 24,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            '\$160,00',
            style: TextStyle(
              fontSize: size.width / 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        )
      ],
    );
  }
}
