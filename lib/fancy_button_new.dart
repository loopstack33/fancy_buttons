// ignore_for_file: must_be_immutable

library fancy_button;

import 'package:flutter/material.dart';

class MyFancyButton extends StatelessWidget {

  double? width;
  double? height;
  LinearGradient? gradient;
  double? borderRadius;
  Color? fontColor;
  Color? borderColor;
  double fontSize;
  String? family;
  FontWeight? weight;
  String text;
  VoidCallback tap;
  Color buttonColor;
  bool isIconButton;
  bool? isGradient;
  String? image;
  double? borderWidth;
  double? imageWidth;
  double? imageHeight;
  Color? shadowColor;
  double? blurRadius;
  double? spreadRadius;
  Offset? offset;
  bool hasShadow;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;

  MyFancyButton({Key? key,this.borderWidth,this.gradient,this.isGradient,required this.isIconButton,this.image,this.borderColor,this.weight,this.width,this.borderRadius,this.height,required this.fontSize,this.fontColor,this.family,required this.text,required this.tap,
    required this.buttonColor,this.imageWidth,this.imageHeight,this.blurRadius,this.offset,this.shadowColor,this.spreadRadius,
    required this.hasShadow,this.padding,this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: tap,
      child: Container(
        margin: margin??EdgeInsets.zero,
        padding: padding??EdgeInsets.zero,
        width: width?? MediaQuery.of(context).size.width,
        height: height ?? 50,
        decoration: BoxDecoration(
          boxShadow: hasShadow?[
            BoxShadow(
                color:shadowColor?? Colors.black.withOpacity(0.25),
                blurRadius:blurRadius?? 4,
                spreadRadius:spreadRadius?? 2,
                offset:offset?? const Offset(0, 2)
            )
          ]:null,
          border:borderColor==null? null
              :Border.all(color: borderColor??Colors.white,width: borderWidth??1),
          gradient: isGradient!=null? gradient:null,
          color:isGradient==null? buttonColor:null,
          borderRadius:borderRadius==null? null
              :BorderRadius.circular(borderRadius??12),
        ),
        child:isIconButton?
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image??"",width:imageWidth ,height: imageHeight,),
            const SizedBox(width: 10),
            Text(text, style: TextStyle(fontSize: fontSize,fontFamily:family,color: fontColor,fontWeight:weight??FontWeight.w600),textAlign: TextAlign.center)
          ],
        )
            :Center(
          child: Text(text, style: TextStyle(fontSize: fontSize,fontFamily: family,color: fontColor,fontWeight: weight??FontWeight.w600),textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}
