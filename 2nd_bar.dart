import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecBar extends StatelessWidget {
  const SecBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.5.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
        color: Color.fromARGB(255, 255, 181, 174),
      ),
      padding: EdgeInsets.only(left: 3.w, right: 3.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w, bottom: 0.5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //this is the text widget named "patients"
                Container(
                  height: 4.h,
                  margin: EdgeInsets.only(bottom: 0.5.h),
                  width: 14.5.w,
                  child: Text(
                    "Patient",
                    style: TextStyle(
                      fontSize: 12.5.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    
                    
                  
                  ),
                ),
                //here we are making the shape widget 
                Container(
                  height: 4.5.h,
                  width: 7.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/shapes.png"),
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft),
                  ),
                  margin: EdgeInsets.only(bottom: 0.5.h),
                ),
                //here we are making prime image
                Container(
                  height: 4.5.h,
                  width: 5.w,
                  
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/prime.png"),
                        alignment: Alignment.centerLeft),
                  ),
                  margin: EdgeInsets.only(bottom: 0.5.h),
                ),
                //we are writing the text "Treatment" here
                Container(
                  height: 4.h,
                  width: 20.5.w,
                  margin: EdgeInsets.only(bottom: 0.5.h),
                  child: Text(
                      "Treatment",
                      style: TextStyle(
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                ),
                //now making the shape widget again
                Container(
                  height: 4.8.h,
                  width: 3.7.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/shapes.png"),
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft),
                  ),
                  margin: EdgeInsets.only(bottom: 0.5.h),
                  
                ),
                //now again making prime
                Container(
                  height: 4.5.h,
                  width: 5.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/prime.png"),
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft),
                  ),
                  margin: EdgeInsets.only(bottom: 0.5.h,left: 5.w),
                ),
                //Now making a text widget named "Date"
                Container(
                  height: 4.h,
                  margin: EdgeInsets.only(bottom: 0.5.h),
                  width: 10.w,
                  child: Text(
                    "Date",
                    style: TextStyle(
                      fontSize: 12.5.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
                //now again making the shape widget
                Container(
                  height: 4.5.h,
                  width: 3.5.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/shapes.png"),
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft),
                  ),
                  margin: EdgeInsets.only(bottom: 0.5.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
