import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/extensions/responsive_extension.dart';
import '../../../../core/services/storage_services/preferences/preferences_keys.dart';
import '../../../../core/services/storage_services/preferences/preferences_service.dart';

import '../../../auth/presentation/views/login_view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  Future<void> finishOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    final service = PreferencesService(prefs);

    await service.setData(
      key: PreferencesKeys.onboardingCompleted,
      value: true,
    );

    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101922),
      appBar: AppBar(
        backgroundColor: const Color(0xFF101922),
        leading: const Icon(Icons.clear_outlined, color: Colors.white),
        title: const Text(
          'IronPulse',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/pngs/onboarding_man_running.png',
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 20.h(context)),
            Text(
              'Welcome to\nIronPulse',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.w(context),
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15.h(context)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w(context)),
              child: Text(
                'Fuel your progress. Your journey to elite performance starts here.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.w(context),
                  color: Colors.white70,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w(context)),
              child: ElevatedButton(
                onPressed: finishOnboarding,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3F80FF),
                  minimumSize: Size(double.infinity, 60.h(context)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r(context)),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18.w(context),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.h(context)),
          ],
        ),
      ),
    );
  }
}