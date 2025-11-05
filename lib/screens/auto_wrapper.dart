import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'home.dart';
import 'login.dart';

class AuthWrapper extends StatefulWidget {
const AuthWrapper({Key? key}) : super(key: key);


@override
State<AuthWrapper> createState() => _AuthWrapperState();
}


class _AuthWrapperState extends State<AuthWrapper> {
late final SupabaseClient _client;
@override
void initState() {
super.initState();
_client = Supabase.instance.client;
_client.auth.onAuthStateChange.listen((_) => setState(() {}));
}


@override
Widget build(BuildContext context) {
final user = _client.auth.currentUser;
if (user != null) return const HomeScreen();
return const LoginScreen();
}
}