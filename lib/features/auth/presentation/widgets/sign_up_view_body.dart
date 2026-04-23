import 'package:fitness_app/core/routing/routes_paths.dart';
import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/core/widgets/buttons/custom_elevated_button.dart';
import 'package:fitness_app/core/widgets/text_form_fields/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

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
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
        leading: BackButton(onPressed: () => context.go(RoutePaths.login)),
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
                height: 50.h,
                backgroundColor: Color(0xFF0D7FF2),
                textColor: Colors.white,
              ),
              SizedBox(height: 15.h),
              DividerOR(),
              SizedBox(height: 10.h),
              SignUpWithGoogle(),
              SizedBox(height: 10.h),
              HaveAnAccount(),
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

class SignUpWithGoogle extends StatelessWidget {
  const SignUpWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1E2A3A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: Colors.white.withValues(alpha: 0.2)),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.imagesSvgsGoogle,
              width: 24.w,
              height: 24.h,
            ),
            SizedBox(width: 10.w),
            Text(
              'Sign up with Google',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: TextStyle(fontSize: 14.sp, color: Colors.white54),
        ),
        GestureDetector(
          onTap: () => context.go(RoutePaths.login),
          child: Text(
            'Log in',
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFF2563EB),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class DividerOR extends StatelessWidget {
  const DividerOR({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.white.withValues(alpha: 0.2),
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            'OR',
            style: TextStyle(fontSize: 14.sp, color: Colors.white38),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.white.withValues(alpha: 0.2),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}

class SignUpUpperPart extends StatelessWidget {
  const SignUpUpperPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.imagesPngsSignUp,
          height: 200.h,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
          bottom: 35,
          left: 50,
          child: Text('Join the Forge', style: TextStyle(fontSize: 36.sp)),
        ),
        Positioned(
          bottom: 15,
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
