import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostello_merchant/pages/call_screen.dart';
import 'package:ostello_merchant/pages/payment_screen.dart';
import 'package:ostello_merchant/pages/payment_successful.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => PaymentScreen()));
              },
              child: Text("Payment Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => PaymentSuccess()));
              },
              child: Text("Payment Success"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CallScreen()));
              },
              child: Text("Call Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
