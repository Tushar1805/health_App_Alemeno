import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_checkup/Provider/backend.dart';
import 'package:provider/provider.dart';

class LabTests extends StatefulWidget {
  // final List<Map<String, dynamic>> labTest;
  final bool desktop;
  const LabTests({Key? key, @required desktop})
      : desktop = desktop,
        super(key: key);

  @override
  State<LabTests> createState() => _LabTestsState();
}

class _LabTestsState extends State<LabTests> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: provider.labTests.length,
      gridDelegate: widget.desktop
          ? SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 65,
              mainAxisSpacing: 70,
              childAspectRatio: 1)
          : SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.65),
      itemBuilder: (context, index) {
        return Container(
          // width: 140,
          // height: 175,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.50, color: Color(0xFFD2D2D2)),
              borderRadius: BorderRadius.circular(widget.desktop ? 10 : 5),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // width: 140,
                padding: EdgeInsets.only(top: 5),
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: ShapeDecoration(
                  color: Color(0xCC10217D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(widget.desktop ? 10 : 5),
                      topRight: Radius.circular(widget.desktop ? 10 : 5),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    provider.labTests[index].testName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: widget.desktop ? 12 : 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0.14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Includes ${provider.labTests[index].noOfTests} tests',
                      style: TextStyle(
                        color: Color(0xFF475569),
                        fontSize: widget.desktop ? 15 : 13,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.13,
                      ),
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: widget.desktop
                          ? MediaQuery.of(context).size.width * 0.07
                          : 27,
                      height: widget.desktop
                          ? MediaQuery.of(context).size.width * 0.02
                          : 24,
                      padding: const EdgeInsets.only(
                          top: 6, left: 7, right: 8, bottom: 6),
                      decoration: ShapeDecoration(
                        color: Color(0xFF16C2D5),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(widget.desktop ? 8 : 4),
                        ),
                      ),
                      child: widget.desktop
                          ? Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/shield.svg',
                                    allowDrawingOutsideViewBox: true,
                                    height: 25.0,
                                    width: 25.0,
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Center(
                                      child: Text(
                                        'Safe',
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w200,
                                          height: 0.11,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : Center(
                              child: SvgPicture.asset(
                                'assets/images/shield.svg',
                                allowDrawingOutsideViewBox: true,
                                height: 25.0,
                                width: 25.0,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              widget.desktop
                  ? Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 8, 0),
                      height: MediaQuery.of(context).size.width * 0.06,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: provider.labTests[index].tests.length > 3
                            ? 3
                            : provider.labTests[index].tests.length,
                        itemBuilder: (context, index2) {
                          return Row(
                            children: [
                              Text(
                                '\u2022',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text('${provider.labTests[index].tests[index2]}'),
                            ],
                          );
                        },
                      ),
                    )
                  : SizedBox(),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Get reports in 24 hours',
                  style: TextStyle(
                    color: Color(0xFF475569),
                    fontSize: widget.desktop ? 11 : 9,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.20,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: Row(
                  children: [
                    Container(
                      width: widget.desktop ? 18 : 7,
                      height: widget.desktop ? 18 : 8,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: SvgPicture.asset(
                        'assets/images/rupee.svg',
                        allowDrawingOutsideViewBox: true,
                        height: 25.0,
                        width: 25.0,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        provider.labTests[index].discountedPrice.toString(),
                        style: TextStyle(
                          color: Color(0xFF10217D),
                          fontSize: widget.desktop ? 15 : 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0.14,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      provider.labTests[index].price.toString(),
                      style: TextStyle(
                        color: Color(0xFF5A5A5A),
                        fontSize: widget.desktop ? 12 : 8,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                        height: widget.desktop ? 0 : 0.25,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: widget.desktop
                        ? MediaQuery.of(context).size.height * 0.055
                        : 30,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    decoration: ShapeDecoration(
                      color: provider.labTests[index].cart
                          ? Color(0xFF16C2D5)
                          : Color(0xFF10217D),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Center(
                      child: Text(
                        provider.labTests[index].cart
                            ? 'Added to Cart'
                            : 'Add to cart',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: widget.desktop ? 15 : 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 3, 15, 5),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: widget.desktop
                        ? MediaQuery.of(context).size.height * 0.055
                        : 30,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFF10217D)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'View Details',
                        style: TextStyle(
                          color: Color(0xFF10217D),
                          fontSize: widget.desktop ? 15 : 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.19,
                          letterSpacing: 0.25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              widget.desktop
                  ? SizedBox(
                      height: 15,
                    )
                  : SizedBox()
            ],
          ),
        );
      },
    );
  }
}
