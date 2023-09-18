import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/faqs_component.dart';

class FaqsScreen extends StatelessWidget {
  const FaqsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      backgroundColor: ColorsConstant.black,
      drawer: const DrawerComponent(),
      appBar: const AppBarComponent(pageTitle: 'FAQs',),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),

        child: SingleChildScrollView(
          child: Column(
            children: [
              const FaqsComponent(
                question: 'Question 1',
                answer: "Answer 1",
              ),
              SizedBox(height: 50.h,),
              const FaqsComponent(
                question: 'Question 2',
                answer: "Answer 2",
              ),
              SizedBox(height: 50.h,),
              const FaqsComponent(
                question: 'Question 3',
                answer: "Answer 3",
              ),
              SizedBox(height: 50.h,),
              const FaqsComponent(
                question: 'Question 4',
                answer: "Answer 4",
              ),
              SizedBox(height: 50.h,),
              const FaqsComponent(
                question: 'Question 5',
                answer: "Answer 5",
              ),
              SizedBox(height: 50.h,)
            ],
          ),
        ),




        // child: ListView.builder(itemBuilder: (BuildContext context, index){
        //   return const Padding(
        //     padding: EdgeInsets.only(bottom: 50.0),
        //     child: FaqsComponent(),
        //   );
        // },
        //   itemCount: 5,)
        ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
