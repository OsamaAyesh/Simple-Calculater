import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool theme = true;
  String math1 = "";
  String math2 = "";
  String operation="";
  String math3="";
  late double value1;
  late double value2;
  bool division=false;
  bool multiplication=false;
  bool subsitution=false;
  bool addtion=false;
  bool equal=false;
  bool v=false;
  double v1=1;
  double v2=2;
  double v3=3;
  double v4=4;
  double v5=5;
  double v6=6;
  double v7=7;
  double v8=8;
  double v9=9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          theme ? const Color(0XFFF1F2F3) : const Color(0XFF17171C),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  theme = !theme;
                });
              },
              child: Center(
                child: theme
                    ? Image.asset(
                        "images/toggle1.png",
                        height: 32.h,
                        width: 72.w,
                      )
                    : Image.asset(
                        "images/toggle2.png",
                        height: 32.h,
                        width: 72.w,
                      ),
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 47.h,
              width: 335.w,
              child: Text(
                math1+operation+math2,
                style: GoogleFonts.workSans(
                  color: const Color(0XFF6D6D70),
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 96.h,
              width: 335.w,
              child: Text(
                math3,
                style: GoogleFonts.workSans(
                  color: const Color(0XFF6D6D70),
                  fontSize: 88.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            math1="";
                            math2="";
                            value1=0;
                            value2=0;
                            operation="";
                            division=false;
                            multiplication=false;
                            subsitution=false;
                            addtion=false;
                            math3="";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFD2D3DA)
                              : const Color(0XFF4E505F),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "C",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {

                          });

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFD2D3DA)
                              : const Color(0XFF4E505F),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "-",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            math1+="%";
                          });

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFD2D3DA)
                              : const Color(0XFF4E505F),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "%",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            division=true;
                            multiplication=false;
                            subsitution=false;
                            addtion=false;
                            if(operation.isEmpty) {
                              setState((){
                                operation = "÷";
                              });
                            }
                            print(math1);
                            print(operation);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF4B5EFC),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "÷",
                          style: GoogleFonts.workSans(
                            color: const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(division==true||multiplication==true||subsitution==true||addtion==true){
                              math2+="7";
                            }else{
                              math1+="7";
                            }
                          });

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "7",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(division==true||multiplication==true||subsitution==true||addtion==true){
                              math2+="8";
                            }else{
                              math1+="8";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "8",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(division==true||multiplication==true||subsitution==true||addtion==true){
                              math2+="9";
                            }else{
                              math1+="9";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "9",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            division=false;
                            multiplication=true;
                            subsitution=false;
                            addtion=false;
                            if(operation.isEmpty) {
                              operation = "×";
                              v=true;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF4B5EFC),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "×",
                          style: GoogleFonts.workSans(
                            color: const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(division==true||multiplication==true||subsitution==true||addtion==true){
                              math2+="4";
                            }else{
                              math1+="4";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "4",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(division==true||multiplication==true||subsitution==true||addtion==true){
                              math2+="5";
                            }else{
                              math1+="5";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "5",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () { setState(() {
                          if(division==true||multiplication==true||subsitution==true||addtion==true){
                            math2+="6";
                          }else{
                            math1+="6";
                          }
                        });

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "6",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            division=false;
                            multiplication=false;
                            subsitution=true;
                            addtion=false;
                            if(operation.isEmpty) {
                              operation = "-";
                              v=true;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF4B5EFC),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "-",
                          style: GoogleFonts.workSans(
                            color: const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(division==true||multiplication==true||subsitution==true||addtion==true){
                              math2+="1";
                            }else{
                              math1+="1";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "1",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(division==true||multiplication==true||subsitution==true||addtion==true){
                              math2+="2";
                            }else{
                              math1+="2";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "2",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(division==true||multiplication==true||subsitution==true||addtion==true){
                              math2+="3";
                            }else{
                              math1+="3";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "3",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            division=false;
                            multiplication=false;
                            subsitution=false;
                            addtion=true;
                            if(operation.isEmpty) {
                              operation = "+";
                              v=true;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF4B5EFC),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "+",
                          style: GoogleFonts.workSans(
                            color: const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(division==true||multiplication==true||subsitution==true||addtion==true){
                              math2+=".";
                            }else{
                              math1+=".";
                            }
                          });

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          ".",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(division==true||multiplication==true||subsitution==true||addtion==true){
                              math2+="0";
                            }else{
                              math1+="0";
                            }
                          });

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "0",
                          style: GoogleFonts.workSans(
                            color: theme
                                ? const Color(0XFF000000)
                                : const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(math1.isNotEmpty&&math2.isEmpty&&operation.isEmpty){
                              math1=math1.substring(0,math1.length-1);
                            }else if(math1.isNotEmpty&&math2.isNotEmpty&&operation.isNotEmpty){
                              math2=math2.substring(0,math2.length-1);
                            }else if(math1.isNotEmpty&&math2.isEmpty&&operation.isNotEmpty){
                              operation="";
                            }
                          });

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme
                              ? const Color(0XFFFFFFFF)
                              : const Color(0XFF2E2F38),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Image.asset(
                          "images/icon.png",
                          height: 32.h,
                          width: 32.w,
                          color: theme
                              ? const Color(0XFF000000)
                              : const Color(0XFFFFFFFF),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {

                            if(division){
                              value1=double.parse(math1);
                              value2=double.parse(math2);
                              math3="${value1/value2}";
                            }else if(multiplication){
                              value1=double.parse(math1);
                              value2=double.parse(math2);
                              math3="${value1*value2}";
                            }else if(subsitution){
                              value1=double.parse(math1);
                              value2=double.parse(math2);
                              math3="${value1-value2}";
                            }else if(addtion){
                              value1=double.parse(math1);
                              value2=double.parse(math2);
                              math3="${value1+value2}";
                            }else if(math1.endsWith("%")){
                              String newValue="";
                              newValue=math1.substring(0,math1.length-1);
                              value1=double.parse(newValue);
                              math3="${value1/100}";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF4B5EFC),
                          minimumSize: Size(72.w, 72.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "=",
                          style: GoogleFonts.workSans(
                            color: const Color(0XFFFFFFFF),
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
