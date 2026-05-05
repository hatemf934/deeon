import 'package:deeon/constant.dart';
import 'package:deeon/core/helpers/on_generate_route.dart';
import 'package:deeon/features/auth/presentation/view/regester_vew.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/presentation/manager/customer_cubit/customer_cubit.dart';
import 'package:deeon/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  Hive.registerAdapter(CustomerModelAdapter());
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    await Hive.openBox<CustomerModel>("$customerBox${user.uid}");
  }
  runApp(const Deeon());
}

class Deeon extends StatelessWidget {
  const Deeon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CustomerCubit(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        initialRoute: RegesterVew.id,
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
