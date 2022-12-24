import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: width * 0.02,
          ),
          const ImagePart(),
          SizedBox(
            width: width * 0.08,
          ),
          const DetailPart(),
          SizedBox(
            width: width * 0.13,
          ),
        ],
      ),
    );
  }
}

class ImagePart extends StatefulWidget {
  const ImagePart({
    Key? key,
  }) : super(key: key);

  @override
  State<ImagePart> createState() => _ImagePartState();
}

class _ImagePartState extends State<ImagePart> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2 * .5,
      padding: const EdgeInsets.only(
        left: 0,
        top: 60,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              thumbnails[selectedIndex]['image']!,
              fit: BoxFit.cover,
              height: size.height * .5,
              width: size.width / 2 * .5,
            ),
          ),
          SizedBox(
            height: size.height * .01,
          ),
          SizedBox(
            height: size.height * .15,
            width: size.width / 2 * .5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(
                  thumbnails.length,
                  (index) => GestureDetector(
                    onTap: (() {
                      setState(() {
                        selectedIndex = index;
                      });
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: selectedIndex == index
                                ? const Color(0xFFE67335)
                                : Colors.transparent,
                            width: 2,
                          )),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              thumbnails[index]['image']!,
                              // height: 120,
                              height: size.height * .103,
                              width: size.width * .05,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? Colors.white.withOpacity(0.5)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(8)),
                            height: size.height * .103,
                            width: size.width * .05,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DetailPart extends StatefulWidget {
  const DetailPart({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailPart> createState() => _DetailPartState();
}

class _DetailPartState extends State<DetailPart> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: size.height * 0.15,
        ),
        Text(
          ' Sneaker Company'.toUpperCase(),
          style: TextStyle(
              color: Colors.orange[800],
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              fontSize: 12),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        const Text(
          'Fall Limited Edition \nSneakers',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Text(
          "These low-profile sneakers are your perfect casual wear companion. Featuring a durable rubber outer sole, they’ll withstand everything the weather can offer.",
          style: TextStyle(wordSpacing: 5.0, color: Colors.grey[700]),
        ),
        SizedBox(height: size.height * 0.03),
        Row(
          children: [
            const Text(
              ' \$125.00',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              height: size.height * 0.035,
              width: size.width * 0.030,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.orange[100]!.withOpacity(0.5)),
              child: Center(
                child: Text(
                  "50%",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange[800]),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          '  \$250.00',
          style: TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.grey[400],
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Row(
          children: [
            Container(
              height: size.height * 0.072,
              width: size.width * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blueGrey[400]!.withOpacity(.08)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.orangeAccent,
                      onTap: () {
                        if (itemCount <= 0) {
                          return;
                        }
                        setState(() {
                          itemCount--;
                        });
                      },
                      child: Text(
                        '-',
                        style: TextStyle(
                            color: Colors.orange[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Text('$itemCount',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.orangeAccent,
                      onTap: () {
                        setState(() {
                          itemCount++;
                        });
                      },
                      child: Text(
                        '+',
                        style: TextStyle(
                            color: Colors.orange[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
            Expanded(
                child: Container(
              height: size.height * 0.072,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 9),
                        blurRadius: 10,
                        spreadRadius: 0.5),
                    // BoxShadow(
                    //     color: Colors.white,
                    //     offset: Offset(0, 5),
                    //     blurRadius: 2,
                    //     spreadRadius: 3),
                  ]),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'svg/icon-cart.svg',
                      height: 14,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Add to cart',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ))
            // ElevatedButton.icon(
            //     style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.orange,
            //         fixedSize: Size(size.width * 0.2, size.height * 0.08)),
            //     onPressed: () {},
            //     icon: const Icon(Icons.shopping_cart_outlined, size: 15),
            //     label: const Text(' Add to cart'))
          ],
        )
      ],
    ));
  }
}
