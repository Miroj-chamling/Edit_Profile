import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0, right: 25, left: 25, bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: buildDetails("User Name", "Miroj Rai"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: buildDetails("Email", "mirojrai01@gmail.com"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: buildDetails("Address", "Kapan-3, Katmandu"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: buildDetails("Phone Number", "9818030500"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: buildDetails("Study Level", "Bachelor 1st Year"),
          ),
        ],
      ),
    );
  }

  TextFormField buildDetails(String hintText, String placeHolder) {
    return TextFormField(
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        labelText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeHolder,
        alignLabelWithHint: true,
        hintStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
