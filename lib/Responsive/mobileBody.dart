import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_checkup/Provider/backend.dart';
import 'package:health_checkup/Responsive/labTestsUI.dart';
import 'package:health_checkup/Responsive/packagesUI.dart';
import 'package:health_checkup/Screens/cartScreen.dart';
import 'package:provider/provider.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50), // Set this height
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(10, 35, 10, 10),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Center(
                  child: Text(
                    'Logo',
                    style: TextStyle(
                      color: Color(0xFF2F2F2F),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/images/mdi_cart.svg',
                    height: 20.0,
                    width: 20.0,
                    allowDrawingOutsideViewBox: true,
                  ),
                  onPressed: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChangeNotifierProvider.value(
                              value: provider,
                              builder: (context, child) => CartScreenUi(),
                            )));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: provider.loading
          ? Container(
              color: Colors.white,
              child: Center(child: CircularProgressIndicator()))
          : SingleChildScrollView(
              child: SafeArea(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular lab tests',
                            style: TextStyle(
                              color: Color(0xFF10217D),
                              fontSize: 22,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0.04,
                            ),
                          ),
                          Text(
                            'View more',
                            style: TextStyle(
                              color: Color(0xFF10217D),
                              fontSize: 11,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              height: 0.20,
                              letterSpacing: 0.50,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: LabTests(
                          desktop: false,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                        child: Text(
                          'Popular lab tests',
                          style: TextStyle(
                            color: Color(0xFF10217D),
                            fontSize: 22,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.04,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                        child: PackagesUI(
                          desktop: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
