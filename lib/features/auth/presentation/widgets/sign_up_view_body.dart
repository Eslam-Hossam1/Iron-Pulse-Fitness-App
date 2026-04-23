import 'package:fitness_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IronPulse', style: TextStyle(fontSize: 18.sp),),
        centerTitle: true,
        leading: BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Image.asset(Assets.imagesPngsSignUp),
              
            ],),
            Text('Start your transformation journey today.', style: TextStyle(
              fontSize: 16.sp
            ),)
          ],
        ),
      ),
    );
  }
}
