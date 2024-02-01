import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../home/widget/home_widget.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 80),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF842ED8), Color(0xFFDB28A9),Color(0xFF9D1DCA),Colors.black,Colors.black],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.65,
          ),
          const Text(
            "Feel the beat",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
          ),
          const SizedBox(
            height: 16,
          ),
           Text(
            "Emmerse yourself into the world of music today",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[400], fontWeight: FontWeight.w600, fontSize: 14),
          ),
          const SizedBox(
            height: 16,
          ),
          buildButton(context),
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context)
  {
    return InkWell(
      onTap: (){
        Navigator.of(context)
            .pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
            const HomeWidget()), (Route<dynamic> route) => false);
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Color(0xFF842ED8), Color(0xFFDB28A9), Color(0xFF9D1DCA),],
          ),
        ),
        child: const Center(
          child: Text("Continue",style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),),
        ),
      ),
    );
  }
}
