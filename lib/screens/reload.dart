// import 'package:flutter/material.dart';

// class RoundedButton extends StatelessWidget {
//   final String text;
//   final Function press;
//   final double verticalPadding;
//   final double fontSize;
//   const RoundedButton(
//     String s, {
//     Key? key,
//     required this.text,
//     required this.press,
//     this.verticalPadding = 16,
//     this.fontSize = 16,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press,
//       child: Container(
//         alignment: Alignment.center,
//         width: double.infinity,
//         margin: const EdgeInsets.symmetric(vertical: 16),
//         padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(30),
//           boxShadow: [
//             BoxShadow(
//               offset: Offset(0, 15),
//               blurRadius: 30,
//               color: Color(0xFF666666).withOpacity(.11),
//             ),
//           ],
//         ),
//         // ignore: prefer_const_constructors
//         child: Text(
//           text,
//           // ignore: prefer_const_constructors
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
