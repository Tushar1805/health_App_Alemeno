import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_checkup/Provider/backend.dart';
import 'package:health_checkup/Responsive/appBar.dart';
import 'package:health_checkup/Responsive/labTestsUI.dart';
import 'package:health_checkup/Responsive/packagesUI.dart';
import 'package:provider/provider.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: appBar(context),
      body: provider.loading
          ? Container(
              color: Colors.white,
              child: Center(child: CircularProgressIndicator()))
          : SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 50, bottom: 30),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Popular Lab tests',
                              style: TextStyle(
                                color: Color(0xFF10217D),
                                fontSize: 40,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0.03,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.14,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF10217D),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Popular tests',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF10217D)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Fever',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF10217D),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF10217D)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Covid 19',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF10217D),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF10217D)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Allergy Profiles',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF10217D),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF10217D)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Fitness',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF10217D),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Center(
                                          child: Text(
                                            'View more',
                                            style: TextStyle(
                                              color: Color(0xFF10217D),
                                              fontSize: 20,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.underline,
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(Icons.arrow_forward,
                                            size: 16, color: Color(0xFF10217D))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 50),
                            child: LabTests(
                              desktop: true,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 50, bottom: 40),
                            alignment: Alignment.center,
                            child: Text(
                              'Popular Packages',
                              style: TextStyle(
                                color: Color(0xFF10217D),
                                fontSize: 40,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0.03,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.14,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF10217D),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'All Packages',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF10217D)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Elderly',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF10217D),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF10217D)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Heart',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF10217D),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF10217D)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Women Health',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF10217D),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF10217D)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Men',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF10217D),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Center(
                                          child: Text(
                                            'View more',
                                            style: TextStyle(
                                              color: Color(0xFF10217D),
                                              fontSize: 20,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.underline,
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(Icons.arrow_forward,
                                            size: 16, color: Color(0xFF10217D))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 50),
                            child: PackagesUI(
                              desktop: true,
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // width: 1440,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(color: Color(0xFF262626)),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(100, 40, 100, 20),
                        child: Row(
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFAFAFA),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Logo',
                                        style: TextStyle(
                                          color: Color(0xFF262626),
                                          fontSize: 22,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      'Join Us',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0.06,
                                      ),
                                    ),
                                  ),
                                  Row(children: [
                                    SvgPicture.asset(
                                      'assets/images/youtube.svg',
                                      allowDrawingOutsideViewBox: true,
                                      height: 25.0,
                                      width: 25.0,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/facebook.svg',
                                      allowDrawingOutsideViewBox: true,
                                      height: 25.0,
                                      width: 25.0,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/twitter.svg',
                                      allowDrawingOutsideViewBox: true,
                                      height: 25.0,
                                      width: 25.0,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/instagram.svg',
                                      allowDrawingOutsideViewBox: true,
                                      height: 25.0,
                                      width: 25.0,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/linkedin.svg',
                                      allowDrawingOutsideViewBox: true,
                                      height: 25.0,
                                      width: 25.0,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ])
                                ]),
                            Column(children: []),
                            Column(children: []),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
