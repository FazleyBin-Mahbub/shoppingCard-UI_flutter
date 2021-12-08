import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';
import 'package:get/get.dart';

class ShoppingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
          title: Text(
            'Shopping Card',
            style: GoogleFonts.lato(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.delete_outlined,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                height: size.height / 4,
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        left: 10,
                      ),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.height / 8,
                          width: size.width / 5,
                          margin: EdgeInsets.only(
                            left: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/shoe2.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Artifical Leather Loafer for\nMen'),
                            Text('Size:40 , Color: Brown'),
                            Text('৳ 714 x 1'),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '৳ 714',
                                  style: TextStyle(
                                    color: Color(0xfff4b48c),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '৳ 1,050',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                MaterialButton(
                                  elevation: 0.0,
                                  color: Colors.white,
                                  shape: CircleBorder(),
                                  onPressed: () {},
                                  child: Icon(
                                    Mdi.minus,
                                    size: 20,
                                  ),
                                ),
                                Text(' 1 '),
                                MaterialButton(
                                  elevation: 0.0,
                                  color: Colors.white,
                                  shape: CircleBorder(),
                                  onPressed: () {},
                                  child: Icon(
                                    Mdi.plus,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 2.4,
              ),
              Container(
                height: size.height / 9,
                width: size.width,
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 140.0),
                      child: Text('Total: '),
                    ),
                    Text(
                      '৳ 710',
                      style: TextStyle(
                        color: Color(0xfff4b48c),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: size.height / 16,
                        margin: EdgeInsets.only(
                          right: 20,
                          left: 10,
                        ),
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.defaultDialog(
                                title: '',
                                actions: [],
                                backgroundColor: Colors.white,
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Enter Mobile number to get OTP'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Mobile'),
                                    Container(
                                      height: size.height / 13,
                                      width: size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ));
                          },
                          child: Center(
                            child: Text(
                              'Check out'.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
