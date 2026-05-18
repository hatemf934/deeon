import 'package:deeon/core/helpers/custom_awesome_dialog.dart';
import 'package:deeon/core/helpers/is_arabic.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/features/auth/data/repos/auth_repo_impl.dart';
import 'package:deeon/features/home/presentation/manager/account/account_cubit.dart';
import 'package:deeon/features/home/presentation/manager/customer_cubit/customer_cubit.dart';
import 'package:deeon/features/home/presentation/manager/search/search_cubit.dart';
import 'package:deeon/features/home/presentation/view/widgets/body_home_view.dart';
import 'package:deeon/features/home/presentation/view/widgets/custom_sign_out_button.dart.dart';
import 'package:deeon/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:deeon/features/home/presentation/view/widgets/custom_floating_action_button.dart';
import 'package:deeon/features/home/presentation/view/widgets/home_view_search.dart';
import 'package:deeon/features/home/presentation/view/widgets/user_account_section.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = RouteManager.homeViewRoute;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String email = "";
  String name = "";
  @override
  void initState() {
    BlocProvider.of<CustomerCubit>(context).displayCustomer();
    super.initState();
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchCubit(context.read<CustomerCubit>()),
        ),
        BlocProvider(create: (context) => AccountCubit()),
      ],
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: ColorManager.primaryColor,
            appBar: CustomAppBar(),
            drawer: Drawer(
              width: size.width * 0.75,
              child: Container(
                color: ColorManager.primaryColor,
                child: Column(
                  children: [
                    UserAccountSection(email: email, name: name),
                    CustomSignOutButton(),
                  ],
                ),
              ),
            ),
            body: BodyHomeView(),
            floatingActionButton: BlocListener<CustomerCubit, CustomerState>(
              listener: (context, state) {
                if (state is CustomerFailure) {
                  CustomAswesomeDialog().AwesomeDialogError(
                    context: context,
                    description: state.error,
                  );
                }
              },
              child: CustomFloatingActionButton(),
            ),
            floatingActionButtonLocation: isArabic()
                ? FloatingActionButtonLocation.startFloat
                : FloatingActionButtonLocation.endFloat,
          ),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is SearchShow ||
                  state is SearchCustomer ||
                  state is SearchNoResult) {
                return HomeViewSearch();
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }

  Future<void> getUserData() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final userData = await AuthRepoImpl().getUserData(documentId: uid);
    setState(() {
      name = userData.name;
      email = userData.email;
    });
  }
}
