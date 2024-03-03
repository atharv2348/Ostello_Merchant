import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ostello_merchant/pages/payment_successful.dart';
import 'package:ostello_merchant/utils/colors.dart';
import 'package:ostello_merchant/utils/sizes.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  void customShowModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 220 * kHeight,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Container(
              // color: Colors.grey[200],
              child: Column(
                children: [
                  Container(
                    height: 4 * kHeight,
                    width: 128 * kWidth,
                    decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  SizedBox(height: 40 * kHeight),
                  SizedBox(
                    // height: 70 * kHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Help",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Avenir_light',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(),
                        SizedBox(height: 15 * kHeight),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Report",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Avenir_light',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading
        leading: const Icon(Icons.arrow_back_ios_rounded),
        // title
        title: const Text(
          "Lead Details",
          style: TextStyle(
            fontFamily: 'Avenir_light',
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        // trailing
        actions: [
          IconButton(
            onPressed: () {
              HapticFeedback.mediumImpact();
            },
            icon: const Icon(CupertinoIcons.ellipsis_vertical),
          )
        ],

        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 24 * kHeight,
              left: 16 * kWidth,
              right: 16 * kWidth,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFFBFBFB),
                      border: Border.all(color: const Color(0xFFEEEEEE)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16 * kWidth,
                            right: 16 * kWidth,
                            top: 16 * kHeight,
                            bottom: 12 * kHeight),
                        child: Container(
                          width: 296 * kWidth,
                          height: 77 * kHeight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Rajbir ",
                                          style: TextStyle(
                                            fontSize: kWidth * 18,
                                            color: Colors.black,
                                            fontFamily: 'Avenir_light',
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "(4.7km away)",
                                          style: TextStyle(
                                              fontSize: kWidth * 14,
                                              fontFamily: 'Avenir_light',
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "7th class",
                                    style: TextStyle(
                                      fontFamily: 'Avenir_light',
                                      fontSize: kWidth * 14,
                                    ),
                                  ),
                                  Text(
                                    "English, Maths, Science",
                                    style: TextStyle(
                                      fontFamily: 'Avenir_light',
                                      fontSize: kWidth * 14,
                                    ),
                                  )
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  HapticFeedback.mediumImpact();
                                },
                                child: Container(
                                  height: 24 * kHeight,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF029C42),
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12 * kWidth,
                                        vertical: 3 * kHeight),
                                    child: const Text(
                                      "Ready to join",
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF029C42),
                                          fontFamily: 'Avenir_light',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 20,
                        endIndent: 20,
                        color: Color(0XFFEEEEEE),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16 * kWidth,
                            right: 16 * kWidth,
                            top: 12 * kHeight,
                            bottom: 16 * kHeight),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Demo date",
                                  style: TextStyle(
                                    fontFamily: 'Avenit_light',
                                    color: textLightGreyColor,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "7 Feb",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Budget",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Avenit_light',
                                      color: textLightGreyColor),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "₹1500/-",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20 * kHeight),
                Text(
                  "Receive payment of ₹1,500",
                  style: TextStyle(fontSize: 17 * kWidth),
                ),
                // qr image
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 64 * kWidth),
                    child: Image.asset('assets/images/qr.png')),
                SizedBox(height: 15 * kHeight),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24 * kWidth),
                        child: Text(
                          "or",
                          style: TextStyle(fontSize: kWidth * 18),
                        )),
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15 * kHeight),

                ElevatedButton(
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                    customShowModalBottomSheet();
                  },
                  child: Center(
                    child: Text(
                      "Sent Payment Link to {Student's name}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14 * kWidth,
                          fontFamily: 'Avenir_light',
                          fontWeight: FontWeight.w600),
                      maxLines: 1,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color(0xFF7D23E0),
                    minimumSize: Size(300, 48 * kHeight),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 15 * kHeight),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24 * kWidth),
                        child: Text(
                          "or",
                          style: TextStyle(fontSize: kWidth * 18),
                        )),
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24 * kHeight),

                OutlinedButton(
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const PaymentSuccess()));
                  },
                  child: Center(
                    child: Text(
                      "Cash collected",
                      style: TextStyle(
                          color: const Color(0xFF7D23E0),
                          fontSize: 16 * kWidth,
                          fontFamily: 'Avenir_light',
                          fontWeight: FontWeight.w900),
                      maxLines: 1,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      minimumSize: Size(300, 48 * kHeight),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(color: Color(0xFF7D23E0))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
