import 'package:fitness_app/core/routing/routes_paths.dart';
import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:fitness_app/core/theme/app_text_styles.dart';
import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/core/widgets/buttons/custom_text_button.dart';
import 'package:fitness_app/core/widgets/text_form_fields/custom_password_form_field_with_title.dart';
import 'package:fitness_app/core/widgets/text_form_fields/custom_text_form_field_with_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text('IronPulse', style: AppTextStyles.bold18(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 0),
                child: Image.asset(
                  Assets.imagesPngsLoginBody,
                  fit: BoxFit.cover,
                ),
              ),
              Text('Welcome Back', style: AppTextStyles.bold32(context)),
              SizedBox(height: 8),
              Text(
                'Fuel your progress. Log in to your pulse.',
                style: AppTextStyles.regular16(
                  context,
                ).copyWith(color: AppColors.darkSurface),
              ),
              SizedBox(height: 24),
              CustomTextFormFieldWithTitle(
                prefixIcon: Icon(Icons.email_outlined),
                title: 'Email Address',
                hint: 'Enter your email',
                onSaved: (p0) {},
              ),
              SizedBox(height: 16),
              CustomPasswordTextFormFieldWithTitle(
                hint: 'Enter your PassWord',
                title: 'PassWord',
                onSaved: (p0) {},
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Forget PassWord?',
                      style: AppTextStyles.medium14(
                        context,
                      ).copyWith(color: AppColors.darkPrimary),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              CustomTextButton(
                width: double.infinity,
                text: 'Log In',
                onPressed: () {
                  // login logic with supabase
                },
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do not have an account',
                    style: AppTextStyles.regular14(
                      context,
                    ).copyWith(color: AppColors.darkSurface),
                  ),
                  InkWell(
                    onTap: () {
                      context.go(RoutePaths.signUp);
                    },
                    child: Text(
                      'SignUp?',
                      style: AppTextStyles.bold14(
                        context,
                      ).copyWith(color: AppColors.darkPrimary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
