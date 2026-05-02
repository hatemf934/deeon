import 'package:deeon/core/helpers/on_generate_route.dart';
import 'package:deeon/features/auth/presentation/view/regester_vew.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  await Hive.openBox("customer");
  Hive.registerAdapter(CustomerModelAdapter());
  runApp(const Deeon());
}

class Deeon extends StatelessWidget {
  const Deeon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: RegesterVew.id,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
