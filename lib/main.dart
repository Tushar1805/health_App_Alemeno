import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:health_checkup/Provider/backend.dart';
import 'package:health_checkup/Screens/homepage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
          create: (context) => CartProvider(), child: HomePage()),
    );
  }
}
