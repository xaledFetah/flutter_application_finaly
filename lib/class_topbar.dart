// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/class_grid_card.dart';

// class TopbarC extends StatelessWidget {
//   const TopbarC({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: 50,
//                   height: 50,
//                   child: Image.asset('images/s.jpg'),
//                 ),
//                 Container(
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.pushNamed(context, "addcityship");
//                     },
//                     child: Text(
//                       "إضافة شركة",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: Icon(
//                     Icons.home_work,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//               ],
//             ),
//             Divider(
//               color: Colors.black54,
//               thickness: 1,
//             ),
//             SingleChildScrollView(
//               child: GridCardC(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
