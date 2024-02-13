import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginsdk/firebase_options.dart';
import 'package:loginsdk/wrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
          colorScheme: const ColorScheme.dark()),
      debugShowCheckedModeBanner: false,
      home: const Wrapper(),
    );
  }
}
