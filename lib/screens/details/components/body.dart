import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'package:plant_app/screens/details/components/title_and_price.dart';

import 'image_and_icons.dart';

class Body1 extends StatefulWidget {
  const Body1({super.key});
  @override
  State<Body1> createState() => _MyBody1State();
}

class _MyBody1State extends State<Body1> {
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          // ignore: prefer_const_constructors
          TitleAndPrice(title: "Canabis APP", country: "Russia", price: 440),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                      // ignore: prefer_const_constructors
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: kPrimaryColor),
                  onPressed: () {},
                  child: const Text(
                    "Camera",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Gallery",
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
