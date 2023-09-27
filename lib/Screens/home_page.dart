import 'package:e_ticaret5/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/card_shoes_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: size.height / 35,
                ),
                child: SizedBox(
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: size.width / 10,
                          height: size.width / 10,
                          decoration: BoxDecoration(
                              color: mainGrey, shape: BoxShape.circle),
                          child: Icon(
                            Icons.menu,
                            size: size.width / 18,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: size.width / 50,
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'E',
                                    style: GoogleFonts.anton(
                                      fontSize: size.width / 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' H',
                                    style: GoogleFonts.anton(
                                      fontSize: size.width / 12,
                                      fontWeight: FontWeight.w500,
                                      color: mainGreen,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' A',
                                    style: GoogleFonts.anton(
                                        fontSize: size.width / 12,
                                        fontWeight: FontWeight.w500,
                                        color: mainGreen),
                                  ),
                                  TextSpan(
                                    text: ' S',
                                    style: GoogleFonts.anton(
                                        fontSize: size.width / 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Container(
                            width: size.width / 10,
                            height: size.width / 10,
                            decoration: BoxDecoration(
                                color: mainGrey, shape: BoxShape.circle),
                            child: Icon(
                              Icons.shopping_basket,
                              size: size.width / 18,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width / 25,
                  right: size.width / 25,
                  top: size.height / 40,
                ),
                child: Container(
                  width: size.width,
                  height: size.height / 18,
                  decoration: BoxDecoration(
                    color: mainGrey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        size.width / 30,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: size.width / 25),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: size.width / 18,
                          ),
                          border: InputBorder.none,
                          hintText: 'What are you lokking for?',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: size.width / 28)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height / 30,
                  left: size.width / 25,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width / 26,
                      child: const Icon(
                        Icons.location_on,
                        color: mainGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width / 40),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Ship to',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: size.width / 30,
                              ),
                            ),
                            TextSpan(
                                text: ' Jl.Malioboro, Block Z. no 18',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: size.width / 30,
                                    fontWeight: FontWeight.w800))
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: size.width / 25,
                      ),
                      child: SizedBox(
                        width: size.width / 25,
                        height: size.height / 40,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: size.width / 25,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height / 30,
                ),
                child: SizedBox(
                  width: size.width,
                  height: size.height / 10,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        marks(size, 'assets/logo/addidas.png'),
                        marks(size, 'assets/logo/nike.png'),
                        marks(size, 'assets/logo/puma.png'),
                        marks(size, 'assets/logo/nb.png'),
                        marks(size, 'assets/logo/convers.png'),
                        marks(size, 'assets/logo/vans.png'),
                        marks(size, 'assets/logo/addidas.png'),
                        marks(size, 'assets/logo/addidas.png'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width / 25,
                    right: size.width / 25,
                    top: size.height / 25),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 25,
                          color: Colors.grey)
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height / 5,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              size.width / 20,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: Container(
                          width: size.width / 2.5,
                          height: size.height / 5,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(
                              'assets/images/nike.png',
                            ),
                          )),
                        ),
                      ),
                      Positioned(
                        right: -size.width / 15,
                        top: size.height / 50,
                        child: SizedBox(
                          width: size.width / 2,
                          height: size.height / 8,
                          child: Text(
                            'Year-End Sale',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: size.width / 18),
                          ),
                        ),
                      ),
                      Positioned(
                        right: -size.width / 7,
                        top: size.height / 15,
                        child: SizedBox(
                          width: size.width / 2,
                          height: size.height / 8,
                          child: Text(
                            'Up to 90%',
                            style: TextStyle(
                                color: mainGrey,
                                fontWeight: FontWeight.w300,
                                fontSize: size.width / 23),
                          ),
                        ),
                      ),
                      Positioned(
                        right: size.width / 14,
                        bottom: size.width / 25,
                        child: Container(
                          width: size.width / 3,
                          height: size.height / 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                size.width / 20,
                              ),
                            ),
                            color: mainGreen,
                          ),
                          child: Center(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width / 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 25),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width / 25,
                      ),
                      child: Text(
                        'New Arrival',
                        style: TextStyle(
                          fontSize: size.width / 22,
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: size.width / 25),
                      child: Text(
                        'see all',
                        style: TextStyle(
                          color: mainGreen,
                          fontWeight: FontWeight.w800,
                          fontSize: size.width / 25,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height,
                width: size.width,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: const <Widget>[
                    CardShoeWidget(),
                    CardShoeWidget(),
                    CardShoeWidget(),
                    CardShoeWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
