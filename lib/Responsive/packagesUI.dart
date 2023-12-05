import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_checkup/Provider/backend.dart';
import 'package:provider/provider.dart';

class PackagesUI extends StatefulWidget {
  final bool desktop;
  const PackagesUI({Key? key, @required desktop})
      : desktop = desktop,
        super(key: key);

  @override
  State<PackagesUI> createState() => _PackagesUIState();
}

class _PackagesUIState extends State<PackagesUI> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: provider.packages.length,
      gridDelegate: widget.desktop
          ? SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 65, mainAxisSpacing: 70)
          : SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 40,
              mainAxisSpacing: 15,
              childAspectRatio: 1),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.fromLTRB(30, 25, 20, 10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.75,
                color: Color(0xFFDBDDE0),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: ShapeDecoration(
                      color: Color.fromRGBO(47, 128, 237, 0.10),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.75,
                          color: Color(0xFFDBDDE0),
                        ),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        provider.packages[index].icon,
                        allowDrawingOutsideViewBox: true,
                        height: 25.0,
                        width: 25.0,
                        color: Color(0xff10217D),
                      ),
                    ),
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: widget.desktop
                        ? MediaQuery.of(context).size.width * 0.07
                        : MediaQuery.of(context).size.width * 0.2,
                    height: widget.desktop
                        ? MediaQuery.of(context).size.height * 0.04
                        : MediaQuery.of(context).size.height * 0.04,
                    padding: const EdgeInsets.only(
                        top: 6, left: 7, right: 8, bottom: 6),
                    decoration: ShapeDecoration(
                      color: Color(0xFF16C2D5),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(widget.desktop ? 8 : 4),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Text(
                  provider.packages[index].packageName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: widget.desktop ? 20 : 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.05,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Includes ${provider.packages[index].noOfTests} tests',
                  style: TextStyle(
                    color: Color(0xFF475569),
                    fontSize: widget.desktop ? 15 : 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.13,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                height: MediaQuery.of(context).size.height * 0.06,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: provider.packages[index].details.length > 2
                      ? 2
                      : provider.packages[index].details.length,
                  itemBuilder: (context, index2) {
                    return Row(
                      children: [
                        Text(
                          '\u2022',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('${provider.packages[index].details[index2]}',
                            style: TextStyle(
                              color: Color(0xFF6B86AE),
                              fontSize: widget.desktop ? 13 : 11,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.14,
                            )),
                      ],
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'View more',
                          style: TextStyle(
                            color: Color(0xFF6B86AE),
                            fontSize: widget.desktop ? 13 : 11,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            height: 0.14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '₹',
                            style: TextStyle(
                              color: Color(0xFF1BA9B5),
                              fontSize: widget.desktop ? 20 : 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' ${provider.packages[index].price.toString()}/-',
                            style: TextStyle(
                              color: Color(0xFF1BA9B5),
                              fontSize: widget.desktop ? 20 : 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: widget.desktop
                          ? MediaQuery.of(context).size.width * 0.1
                          : MediaQuery.of(context).size.width * 0.3,
                      height: widget.desktop
                          ? MediaQuery.of(context).size.height * 0.07
                          : MediaQuery.of(context).size.height * 0.05,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 9),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.75, color: Color(0xFF10217D)),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                            color: Color(0xFF10217D),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.12,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}
