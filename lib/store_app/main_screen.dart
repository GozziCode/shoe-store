import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}

// class StoreApScreen extends StatelessWidget {
//   const StoreAppScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 150,
//         ),
//         child: Column(
//           children: [
//             const Nav(),
//             const Divider(),
//             const SizedBox(
//               height: 80,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           // color: Colors.red,
//                           width: double.infinity,
//                           height: 350,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.asset(
//                               'assets/image/image-product-1.jpg',
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             ...List.generate(
//                                 growable: false,
//                                 4,
//                                 (index) => Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           vertical: 20, horizontal: 8),
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(8),
//                                         child: Image.asset(
//                                           thumbnails[index]["images"]!,
//                                           height: 60,
//                                           fit: BoxFit.cover,
//                                           width: 60,
//                                         ),
//                                       ),
//                                     ))
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 35,
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: Container(
//                       color: Colors.green,
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

List<Map<String, String>> thumbnails = [
  {
    "thumbnails": "assets/image/image-product-1-thumbnail.jpg",
    "image": "assets/image/image-product-1.jpg"
  },
  {
    "thumbnails": "assets/image/image-product-2-thumbnail.jpg",
    "image": "assets/image/image-product-2.jpg"
  },
  {
    "thumbnails": "assets/image/image-product-3-thumbnail.jpg",
    "image": "assets/image/image-product-3.jpg"
  },
  {
    "thumbnails": "assets/image/image-product-4-thumbnail.jpg",
    "image": "assets/image/image-product-4.jpg"
  }
];

// class Nav extends StatelessWidget {
//   const Nav({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 15),
//       child: SizedBox(
//         width: double.infinity,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SvgPicture.asset('svg/logo.svg', height: 18),
//             const SizedBox(
//               width: 50,
//             ),
//             Row(children: const [
//               Text('Collections',
//                   style: TextStyle(color: Colors.grey, fontSize: 14)),
//               SizedBox(
//                 width: 25,
//               ),
//               Text(
//                 'Men',
//                 style: TextStyle(color: Colors.grey, fontSize: 14),
//               ),
//               SizedBox(
//                 width: 25,
//               ),
//               Text(
//                 'Women',
//                 style: TextStyle(color: Colors.grey, fontSize: 14),
//               ),
//               SizedBox(
//                 width: 25,
//               ),
//               Text('About', style: TextStyle(color: Colors.grey)),
//               SizedBox(
//                 width: 25,
//               ),
//               Text('Contact', style: TextStyle(color: Colors.grey)),
//             ]),
//             const Spacer(),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: SvgPicture.asset('svg/icon-cart.svg', height: 15),
//                 ),
//                 CircleAvatar(
//                   child: Image.asset(
//                     'image/image-avatar.png',
//                     fit: BoxFit.cover,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
