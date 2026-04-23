import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/core/widgets/buttons/custom_elevated_button.dart';
import 'package:fitness_app/core/widgets/text_form_fields/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'IronPulse',
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SignUpUpperPart(),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textFieldTitle(text: ' Full Name'),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: CustomTextForm(
                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        hintText: 'Enter your Name',
                      ),
                    ),
                    textFieldTitle(text: ' Email Address'),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: CustomTextForm(
                        controller: _emailController,
                        keyboardType: TextInputType.name,
                        hintText: 'Enter your Email',
                      ),
                    ),
                    textFieldTitle(text: ' Password'),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: CustomTextForm(
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'Enter your Password',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          child: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        obscureText: !_isPasswordVisible,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              CustomElevatedButton(
                onPressed: () {},
                text: 'Create Account',
                width: double.infinity,
                height: 60.h,
                backgroundColor: Color(0xFF0D7FF2),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding textFieldTitle({required String text}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h, top: 5.h),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class SignUpUpperPart extends StatelessWidget {
  const SignUpUpperPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.imagesPngsSignUp),
        Positioned(
          bottom: 50,
          left: 50,
          child: Text('Join the Forge', style: TextStyle(fontSize: 36.sp)),
        ),
        Positioned(
          bottom: 30,
          left: 15,
          child: Text(
            'Start your transformation journey today.',
            style: TextStyle(fontSize: 16.sp),
          ),
        ),
      ],
    );
  }
}
