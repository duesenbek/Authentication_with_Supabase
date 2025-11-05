import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
final SupabaseClient _client = Supabase.instance.client;


Future<void> signIn(String email, String password) async {
final res = await _client.auth.signInWithPassword(email: email, password: password);
return res;
}



Future<void> signUp(String email, String password) async {
final res = await _client.auth.signUp(email: email, password: password);
return res;
}


Future<void> signOut() => _client.auth.signOut();


User? get currentUser => _client.auth.currentUser;


Stream<AuthState> get authStateChanges => _client.auth.onAuthStateChange;
}