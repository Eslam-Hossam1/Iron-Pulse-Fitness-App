import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:fitness_app/core/theme/app_text_styles.dart';
import 'package:fitness_app/core/widgets/buttons/custom_button.dart';
import 'package:fitness_app/core/widgets/text_form_fields/custom_text_form_field_with_title.dart';
import 'package:fitness_app/features/profile/presentation/widgets/account_verification_box.dart';
import 'package:fitness_app/features/profile/presentation/widgets/edit_profile_pic.dart';
import 'package:flutter/material.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            EditProfilePic(),
            Text(
              'Change Profile Picture',
              style: AppTextStyles.medium14(
                context,
              ).copyWith(color: AppColors.darkPrimary),
            ),
            SizedBox(height: 40),
            CustomTextFormFieldWithTitle(
              onSaved: (value) {},
              title: 'Full Name',
              hint: 'Enter your name please',
              titleStyle: AppTextStyles.medium14(
                context,
              ).copyWith(color: AppColors.darkSecondaryTextColor),
            ),
            SizedBox(height: 40),
            AccountVerificationBox(),
            SizedBox(height: 16),
            CustomButton(
              width: double.infinity,
              onPressed: () {
                // logic
              },
              child: Text(
                'Save Changes',
                style: AppTextStyles.semiBold16(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
            SizedBox(height: 12),
            CustomButton(
              backgroundColor: AppColors.darkFormColor,
              width: double.infinity,
              onPressed: () {
                // logic
              },
              child: Text(
                'Cancel Changes',
                style: AppTextStyles.semiBold16(
                  context,
                ).copyWith(color: AppColors.darkSecondaryTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
