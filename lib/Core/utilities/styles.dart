import 'package:flutter/material.dart';
import 'package:test/Core/utilities/constant.dart';

abstract class Styles {
  static const textStyleAppBar = TextStyle(
    fontSize: 22,
    fontFamily: 'Poppins', 
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
  static const textStyletitle = TextStyle(
    fontSize: 19,
    fontFamily: 'Poppins', 
    color: Color(0XFF263238),
    fontWeight: FontWeight.w600,
  );
   static const textStylesubtitle = TextStyle(
    fontSize: 14,
    fontFamily: 'Poppins', 
    color: Color(0XFF676666),
    fontWeight: FontWeight.w500,
  );
    static const textStylebuttom = TextStyle(
    fontSize: 15,
    fontFamily: 'Poppins', 
    fontWeight: FontWeight.w700,
  );
   static const recordappbar = TextStyle(
    color:recordtextcolor,
    fontSize: 27,
    fontFamily: 'Poppins', 
    fontWeight: FontWeight.bold,
  );
   static const recordtext = TextStyle(
    color: recordtextcolor,
    fontSize: 28,
    fontFamily: 'Poppins', 
    fontWeight: FontWeight.w700,
  );
   static const recordcarddetail = TextStyle(
    color: Color(0XFF263238),
    fontSize: 15,
    fontFamily: 'Poppins', 
    fontWeight: FontWeight.w500,
  );
}
