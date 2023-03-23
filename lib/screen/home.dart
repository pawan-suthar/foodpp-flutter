import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodpp/screen/singleproduct.dart';

import 'drawerside.dart';

class Home extends StatelessWidget {
/*  
  * PRODUCT function

 */

  // Widget singleproveg() {
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: 10),
  //     height: 250,
  //     width: 180,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(10),
  //       color: Colors.white,
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         /*
  //                     * product image
  //                     */
  //         Expanded(
  //           flex: 2,
  //           child: Image.network(
  //             "https://m.media-amazon.com/images/I/71BLz5r7aiL._SX679_.jpg",
  //             height: 150,
  //             width: 150,
  //           ),
  //         ),

  //         /*
  //                     * product image details
  //                     */
  //         Expanded(
  //           child: Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(
  //                   "Fresh Mint Leaves",
  //                   style: TextStyle(
  //                       color: Colors.black, fontWeight: FontWeight.bold),
  //                 ),
  //                 Text(
  //                   "15₹/100gm",
  //                   style: TextStyle(
  //                     color: Colors.grey,
  //                   ),
  //                 ),
  //                 Row(
  //                   children: [
  //                     Expanded(
  //                       child: Container(
  //                         padding: EdgeInsets.only(left: 5),
  //                         height: 30,
  //                         width: 50,
  //                         decoration: BoxDecoration(
  //                           border: Border.all(
  //                             color: Colors.grey,
  //                           ),
  //                           borderRadius: BorderRadius.circular(10),
  //                         ),
  //                         child: Row(
  //                           children: [
  //                             Expanded(
  //                               child: Text(
  //                                 "100gm",
  //                                 style: TextStyle(color: Colors.black),
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       width: 5,
  //                     ),
  //                     Expanded(
  //                       child: Container(
  //                         height: 30,
  //                         width: 50,
  //                         decoration: BoxDecoration(
  //                           border: Border.all(
  //                             color: Colors.grey,
  //                           ),
  //                           borderRadius: BorderRadius.circular(10),
  //                         ),
  //                         child: Row(
  //                           crossAxisAlignment: CrossAxisAlignment.center,
  //                           children: [
  //                             Icon(
  //                               Icons.remove,
  //                               size: 15,
  //                               color: Colors.green,
  //                             ),
  //                             Text(
  //                               "1",
  //                               style: TextStyle(color: Colors.orange),
  //                             ),
  //                             Icon(
  //                               Icons.add,
  //                               size: 15,
  //                               color: Colors.green,
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

/*  
  * drawer me niche wali list tiles ka func

 */
  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: DrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromARGB(255, 128, 239, 81),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color.fromARGB(255, 188, 238, 167),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 188, 238, 167),
              child: Icon(
                Icons.shop_2_rounded,
                size: 17,
                color: Colors.black,
              ),
              radius: 12,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            /* 
            * Top image
            */
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1108716/pexels-photo-1108716.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, bottom: 20),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 103, 255, 98),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Fruits",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey.shade900,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 3,
                                        offset: Offset(3, 3),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "35% Off",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "On All Vegeables Products",
                              style: TextStyle(
                                // fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Green seasoning",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            /* 
            * product cart
            */

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleproveg(
                    proname: 'Carrots',
                    proimg:
                        'https://m.media-amazon.com/images/I/41ZInO1t2VL.jpg',
                    onTap: () {},
                  ),
                  singleproveg(
                    proname: 'Cabbage',
                    proimg:
                        'https://m.media-amazon.com/images/I/71IoNP7O8eL._AC_UL480_FMwebp_QL65_.jpg',
                    onTap: () {},
                  ),
                  singleproveg(
                    proname: 'Tomato',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/445675a.jpg?ts=1648026977',
                    onTap: () {},
                  ),
                  singleproveg(
                    proname: 'Onions',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/391306a.jpg?ts=1652789363',
                    onTap: () {},
                  ),
                  singleproveg(
                    proname: 'Capsicum',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/3888a.jpg?ts=1679311401',
                    onTap: () {},
                  ),
                  singleproveg(
                    proname: 'Leamons',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/439699a.jpg',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "fresh Fruits ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleprofru(
                    proname: 'Banana',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/470636a.jpg?ts=1677063692',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Grapes',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/347025a.jpg?ts=1652855625',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Apple',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/428612a.jpg?ts=1658731563',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Kiwi',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/394525a.jpg?ts=1610740513',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Muskmelon',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/365455a.jpg?ts=1658731562',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "fresh Fruits ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleprofru(
                    proname: 'Banana',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/470636a.jpg?ts=1677063692',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Grapes',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/347025a.jpg?ts=1652855625',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Apple',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/428612a.jpg?ts=1658731563',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Kiwi',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/394525a.jpg?ts=1610740513',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Muskmelon',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/365455a.jpg?ts=1658731562',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "fresh Fruits ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleprofru(
                    proname: 'Banana',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/470636a.jpg?ts=1677063692',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Grapes',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/347025a.jpg?ts=1652855625',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Apple',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/428612a.jpg?ts=1658731563',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Kiwi',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/394525a.jpg?ts=1610740513',
                    onTap: () {},
                  ),
                  singleprofru(
                    proname: 'Muskmelon',
                    proimg:
                        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,metadata=none,w=180/app/images/products/sliding_image/365455a.jpg?ts=1658731562',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
