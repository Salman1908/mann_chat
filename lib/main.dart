import 'package:flutter/material.dart';
import 'package:my_chat_app/utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:my_chat_app/pages/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: const String.fromEnvironment(
        'https://wawmfovqlqzhslxisfho.supabase.co'),
    anonKey: const String.fromEnvironment(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Indhd21mb3ZxbHF6aHNseGlzZmhvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU1NDM3MjgsImV4cCI6MjAyMTExOTcyOH0.CTeyO_r761V5ZAH2qAsZb9beDa796n6lO4Ipc5gQY-U'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
