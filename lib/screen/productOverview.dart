import 'package:flutter/material.dart';

enum singlechar { fill, outline }

class ProducOverview extends StatefulWidget {
  final String productname;
  final String productimage;
  // ProducOverview({required this.productname, required this.productimage});

  const ProducOverview(
      {super.key, required this.productname, required this.productimage});

  @override
  State<ProducOverview> createState() => _ProducOverviewState();
}

class _ProducOverviewState extends State<ProducOverview> {
  singlechar _char = singlechar.fill;
  /*  bottom nav ka function  */
  Widget bottomnav({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData icondata,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: backgroundColor,
        child: SizedBox(
          height: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icondata,
                size: 17,
                color: iconColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: TextStyle(color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomnav(
            backgroundColor: Color.fromARGB(255, 54, 56, 54),
            /*  bottom nav ka background color */

            color: Colors.white70,
            iconColor: Colors.grey,
            /*  icon ka color */
            title: "Add to Wishlist",
            /*  botom nav  title */
            icondata: Icons.favorite_outline, /*  bottom nav ka Icon */
          ),
          bottomnav(
            backgroundColor: Colors.green,
            /*  bottom nav ka background color */

            color: Color.fromARGB(179, 0, 0, 0),
            iconColor: Color.fromARGB(255, 0, 0, 0),
            /*  icon ka color */
            title: "Add to Cart",
            /*  botom nav  title */
            icondata: Icons.shop_outlined, /*  bottom nav ka Icon */
          )
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Product Overview page",
          style: TextStyle(color: Color.fromARGB(221, 0, 0, 0)),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.productname),
                    subtitle: Text("\₹15"),
                  ),
                  Container(
                    height: 180,
                    padding: EdgeInsets.all(10),
                    child: Image.network(widget.productimage),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    width: double.infinity,
                    child: Text(
                      "Available Options",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.grey.shade700,
                            ),
                            Radio(
                              value: singlechar.fill,
                              groupValue: _char,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                setState(() {
                                  _char = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Text("\₹15"),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 17,
                                color: Colors.green,
                              ),
                              Text(
                                "ADD",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            // flex: 1,
            child: Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product Description",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Nutrient Value & Benefits Contain Fibre, VItamin A, Vitamin K, Carotenoids, Aminoacid.Vitamin A improves eye health and, boost immunity. Fibres helps keeping up the digestion. Vitamin C helps improving skiin and hair health.\nStorage Tips Dry carrots in sun for a few hours after which you can refrigerate by keeping in plastic bag with holes punched in it or mesh bags.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
