import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:fitness_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class EditProfilePic extends StatelessWidget {
  const EditProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Stack(
        children: [
          Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final avatarRadius = constraints.maxWidth * 0.26;
                final iconSize = constraints.maxWidth * 0.07;
                final iconRadius = constraints.maxWidth * 0.06;
                return Stack(
                  children: [
                    CircleAvatar(
                      radius: avatarRadius,
                      backgroundColor: AppColors.darkOutline,
                      child: CircleAvatar(
                        radius: constraints.maxWidth * 0.25,
                        child: Image.asset(
                          Assets.imagesPngsProfilePicture,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: constraints.maxWidth * 0.02,
                      right: constraints.maxWidth * 0.02,
                      child: InkWell(
                        onTap: () {
                          // edit pic code
                        },
                        child: CircleAvatar(
                          radius: iconRadius,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.camera_alt,
                            size: iconSize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
