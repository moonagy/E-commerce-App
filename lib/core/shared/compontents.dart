import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double wid = double.infinity,
  double r = 10.0,
  required String text,
  bool isUpper = true,
  Color back = Colors.white,
  Color textColor = AppColor.green,

  required  Function() onPressed,

}) =>
    Container(
      width: wid,
      decoration: BoxDecoration(
        color: back,
        borderRadius: BorderRadius.circular(
          r,
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
    );



Widget defaultTextButton({
required String text,
  var baseline ,
bool isUpper = true,
  Color back = Colors.blue,
 required Function() function,
}) =>  TextButton(onPressed: function,
  child:   Text(
    isUpper ? text.toUpperCase() : text,
    style:  TextStyle(
      textBaseline:baseline,
      color: back,
    ),
  ),
);


Widget defaultFormField({

required String? Function(String?) valid ,
  required controller,
  Icon? icon ,
  Icon? preicon ,
  hint = '',
  @required type,
  required Function() function,
  isPassword = false,
  void Function()? onTap
}) =>
    Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          25.0,
        ),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.white
        ),
        validator: valid,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword == false ? false : true,
        onChanged: function(),
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.white),
          suffixIcon: InkWell(onTap:onTap, child: icon ) ,
          suffixIconColor: Colors.white,
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: preicon,
          prefixIconColor: Colors.white,


        ),

      ),
    );