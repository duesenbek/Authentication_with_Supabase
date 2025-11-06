import 'package:flutter/material.dart';
import 'package:authentication_with_supabase/services/auth_service.dart';
import 'package:authentication_with_supabase/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthService _authService = AuthService();
    final User? user = _authService.currentUser;
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Text(
          user != null
              ? 'Email: ${user.email}'
              : 'No user is logged in.',
            style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

              StepStyle: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            if (_errorMessage != null)
              Text(
                _errorMessage!,
                style: const TextStyle(color: Colors.red),
              ),
            const SizedBox(height: 20),
            _isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: _login,
                    child: const Text('Login'),
                  ),

              const SizedBox(height: 20), 

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
              child: const Text('Don\'t have an account? Sign Up'),
              final res = await _client.auth.signInWithPassword(email: email, password: password);

              if (res.error == null) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              } else {
                setState(() {
                  _errorMessage = res.error!.message;
                });
              }
              wid
            },
          ),
        ],
      ),
    );
  }
}
