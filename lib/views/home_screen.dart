// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../helper/payment_controller.dart';
//import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var obj = PaymentController();
  @override
  Widget build(BuildContext context) {
    // final PaymentController controller = Get.put(PaymentController());

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => obj.makePayment(amount: '5', currency: 'USD'),
          child: Text('Make A Payment'),
        ),
      ),
    );
  }
}
