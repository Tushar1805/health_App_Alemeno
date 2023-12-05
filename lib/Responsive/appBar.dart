import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

TextStyle textButtonStyle(color) => TextStyle(
      color: color,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      height: 0.05,
    );

PreferredSize appBar(context) => PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 5,
              offset: Offset(0, 1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            Text(
              'Logo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF3A3A3A),
                fontSize: 32,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.03,
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text('Home',
                          textAlign: TextAlign.center,
                          style: textButtonStyle(Color(0xFF10217D)))),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('View Tests',
                          textAlign: TextAlign.center,
                          style: textButtonStyle(Color(0xFF7A7A7A)))),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('About Us',
                          textAlign: TextAlign.center,
                          style: textButtonStyle(Color(0xFF7A7A7A)))),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Contact',
                          textAlign: TextAlign.center,
                          style: textButtonStyle(Color(0xFF7A7A7A)))),
                ],
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              width: 115,
              height: 70,
              // padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: Color(0xFF10217D)),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/images/mdi_cart.svg',
                        allowDrawingOutsideViewBox: true,
                        height: 25.0,
                        width: 25.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Cart',
                      style: TextStyle(
                        color: Color(0xFF10217D),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.09,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
