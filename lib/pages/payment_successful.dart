import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/sizes.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({super.key});

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(
          top: 24 * kHeight,
          bottom: 24 * kHeight,
          left: 16 * kWidth,
          right: 16 * kWidth,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                SizedBox(
                    height: 216 * kHeight,
                    width: 216 * kWidth,
                    child: Image.asset('assets/images/green_tick.png')),
                SizedBox(height: 24 * kHeight),
                Text(
                  "Your institute has been verified successfully.",
                  style: TextStyle(
                    fontSize: 18 * kWidth,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            // Expanded(child: Spacer()),
            SizedBox(height: 190 * kHeight),
            ElevatedButton(
              onPressed: () {
                HapticFeedback.mediumImpact();
              },
              child: Center(
                child: Text(
                  "Done",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16 * kWidth,
                  ),
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
            )
          ],
        ),
      ),
    );
  }
}
