import 'package:fitness_app/features/auth/presentation/widgets/login_view_body.dart';
import 'package:fitness_app/features/main/presentation/views/main_view.dart';
import 'package:fitness_app/features/profile/presentation/views/edit_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthServise {
  final SupabaseClient supabaseClient = Supabase.instance.client;
  Future<AuthResponse> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    return await supabaseClient.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }
}

// auth manager listen to the  auth state changes

class AuthLogInManager extends StatelessWidget {
  const AuthLogInManager({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        // loading
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        }
        // checking in authntication
        final session = snapshot.hasData ? snapshot.data!.session : null;
        if (session != null) {
          // conflict add home view name
          // add main view navigation sell*****
          return EditProfileView();
        } else {
          return LoginViewBody();
        }
      },
    );
  }
}
