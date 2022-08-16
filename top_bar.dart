import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// ignore: implementation_imports

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  TextEditingController _controller = TextEditingController();
  DateTime date = DateTime(2022, 12, 24);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          height: 32.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(
                "assets/Vector.png",
              ),

            opacity: 0.5,
            alignment: Alignment.bottomRight,
            scale: 1
            ),
            
            border: Border.all(color: Colors.red),
          ),
          child: Row(
            children: [
              //this is the back icon
              Container(
                alignment: Alignment.topLeft,
                // margin: EdgeInsets.all(100.0),
                child:
                    //this is the white round box
                    Padding(
                  padding: EdgeInsets.only(top: 5.4.h, left: 3.w),
                  //this is the back arrow button with white bg and a back arrow in it
                  child: Container(
                    height: 11.h,
                    width: 12.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                        onPressed: () {},
                        padding: EdgeInsets.only(left: 1.h),
                        iconSize: 5.w,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  //this is the "View OPD Patients" text widget
                  Container(
                    padding: EdgeInsets.only(top: 9.h, left: 9.3.w),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.w),
                      child: Text(
                        "View OPD Patients",
                        style: TextStyle(color: Colors.white, fontSize: 21.sp,),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  //this is the calender widget which we use before the date
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, left: 3.w),
                    child: Row(
                      children: [
                        Stack(children: [
                          Container(
                            height: 6.h,
                            width: 6.w,
                            alignment: Alignment.centerLeft,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/calender.png"),
                                  alignment: Alignment.centerLeft),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:1.3.w, top: 0.1.h),
                            child: Container(
                              height: 6.h,
                              width: 6.w,
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/ins_calender.png"),
                                    alignment: Alignment.centerLeft),
                              ),
                            ),
                          ),
                        ]),
                        Container(
                          height: 3.h,
                          width: 30.w,
                          child: Text(
                            '${date.day}/${date.month.toString()}/${date.year}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp),
                            textAlign: TextAlign.center,
                          ),
                          padding: EdgeInsets.only(
                            right: 0.5.w,
                          ),
                        ),
                        //this is the widget with down arrow which will return a date picker
                        Padding(
                          padding: EdgeInsets.only(right: 0.1.w, top: 1.2.h),
                          child: SizedBox(
                            width: 12.w,
                            height: 5.h,
                            child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(primary: Colors.red),
                              onPressed: () async {
                                DateTime? newDate = await showDatePicker(
                                  context: context,
                                  initialDate: date,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100),
                                );

                                if (newDate == null) return;
                                setState(() {
                                  date = newDate;
                                });
                              },
                              child: Container(
                                height: 5.h,
                                width: 4.w,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/downarrow.png"))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
