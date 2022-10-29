import 'package:flutter/material.dart';

import '../../../constants.dart';

class imge_slider extends StatelessWidget {
  const imge_slider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.75,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(63),
          bottomLeft: Radius.circular(63),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 60,
            color: kPrimaryColor.withOpacity(0.29),
          )
        ],
        image: const DecorationImage(
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
          image: AssetImage("assets/images/img.png"),
        ),
      ),
    );
  }
}
