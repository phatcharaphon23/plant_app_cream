import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatefulWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  State<ImageAndIcons> createState() => _ImageAndIconsState();
}

class _ImageAndIconsState extends State<ImageAndIcons> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Spacer(),
                    const IconCard(icon: "assets/icons/list-check.svg"),
                    const IconCard(icon: "assets/icons/hand-holding-heart.svg"),
                    const IconCard(icon: "assets/icons/globe (1).svg"),
                    const IconCard(icon: "assets/icons/power.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
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
                  image: AssetImage(
                      "assets/images/Nocturnal 420 - NocturnalAbstract_com.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
