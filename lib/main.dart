import 'package:deeon/constant.dart';
import 'package:deeon/core/helpers/on_generate_route.dart';
import 'package:deeon/features/PaidDeeon/presentation/bloc/paidDeeon/paid_deeon_cubit.dart';
import 'package:deeon/features/auth/presentation/view/login_view.dart';
import 'package:deeon/features/debts/data/model/deeon_model.dart';
import 'package:deeon/features/debts/presentation/bloc/deeon/deeon_cubit.dart';
import 'package:deeon/features/customers/data/model/account_model.dart';
import 'package:deeon/features/customers/data/model/customer_model.dart';
import 'package:deeon/features/customers/presentation/manager/customer_cubit/customer_cubit.dart';
import 'package:deeon/features/customers/presentation/view/home_view.dart';
import 'package:deeon/firebase_options.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  Hive.registerAdapter(CustomerModelAdapter());
  Hive.registerAdapter(DeeonModelAdapter());
  Hive.registerAdapter(AccountModelAdapter());
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    await Hive.openBox<CustomerModel>("$customerBox${user.uid}");
    await Hive.openBox<AccountModel>("$pictureBox${user.uid}");
  }
  runApp(const Deeon());
}

class Deeon extends StatelessWidget {
  const Deeon({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CustomerCubit()),
        BlocProvider(create: (context) => DeeonCubit()),
        BlocProvider(create: (context) => PaidDeeonCubit()),
      ],
      child: MaterialApp(
        locale: Locale("ar"),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        initialRoute: FirebaseAuth.instance.currentUser == null
            ? LoginView.id
            : HomeView.id,
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
