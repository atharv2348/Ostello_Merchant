import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ostello_merchant/utils/colors.dart';
import 'package:ostello_merchant/utils/sizes.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40 * kWidth),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 128 * kHeight),
                Text(
                  "Incoming Call",
                  style: TextStyle(
                    fontFamily: 'Avenir_light',
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 12 * kHeight),
                Container(
                  width: 120 * kWidth,
                  height: 120 * kHeight,
                  decoration: BoxDecoration(
                    color: Color(0xFF7D23E0).withOpacity(.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      "R",
                      style: TextStyle(
                        color: Color(0xFF7D23E0),
                        fontSize: 40 * kWidth,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12 * kHeight),
                Text(
                  "Ragbir",
                  style: TextStyle(
                    fontSize: 32 * kWidth,
                  ),
                ),
                Text(
                  "+91 0645423781",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Avenir_light',
                      color: textLightGreyColor),
                ),
                SizedBox(height: 250 * kHeight),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            HapticFeedback.mediumImpact();
                          },
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Color(0xFF029C42),
                            child: Icon(
                              Icons.call,
                              size: 38,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Lift",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Avenir_light',
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            HapticFeedback.mediumImpact();
                          },
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Color(0xFFE13B30),
                            child: Icon(
                              Icons.call_end,
                              size: 38,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Hangover",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Avenir_light',
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
