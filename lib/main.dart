import 'package:flutter/material.dart';
import 'package:meme_app/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Supabase.initialize(
    url: 'https://gvfcdfouysxupzkqlkyg.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imd2ZmNkZm91eXN4dXB6a3Fsa3lnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDUxNzIwOTksImV4cCI6MjA2MDc0ODA5OX0.MXtaZdKmZpbxkHjhuce5wBmoLyBLa8LrEpD_ESN_GPM',
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memes App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
