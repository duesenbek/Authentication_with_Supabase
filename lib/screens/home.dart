import 'dart:nativewrappers/_internal/vm/bin/common_patch.dart';

import 'package:flutter/material.dart';
import 'package:authentication_with_supabase/services/auth_service.dart';
import 'package:authentication_with_supabase/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login.dart';
import 'signup.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthService _authService = AuthService();
    final User? user = _authService.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await _authService.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          user != null
              ? 'Welcome, ${user.email}!'
              : 'Welcome, Guest!',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}