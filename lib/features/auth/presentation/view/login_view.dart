import 'package:deeon/constant.dart';
import 'package:deeon/core/helpers/custom_awesome_dialog.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/data/repos/auth_repo_impl.dart';
import 'package:deeon/features/auth/presentation/bloc/signin_cubit/signin_cubit.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_login_view.dart';
import 'package:deeon/features/auth/presentation/view/widgets/title_widget_of_auth_views.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = RouteManager.loginRoute;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<SectionOfLoginViewState> loginSectionKey =
      GlobalKey<SectionOfLoginViewState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(AuthRepoImpl()),
      child: GestureDetector(
        onTap: () {
          loginSectionKey.currentState?.resetValidation();
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: ColorManager.primaryColor,
          body: BlocConsumer<SigninCubit, SigninState>(
            listener: (context, state) async {
              if (state is SignInSucsses) {
                final boxName =
                    "$customerBox${FirebaseAuth.instance.currentUser!.uid}";
                if (!Hive.isBoxOpen(boxName)) {
                  await Hive.openBox<CustomerModel>(boxName);
                }

                Navigator.pushReplacementNamed(
                  // ignore: use_build_context_synchronously
                  context,
                  RouteManager.homeViewRoute,
                  arguments: {
                    'email': state.userEntity.email,
                    'name': state.userEntity.name,
                  },
                );
              } else if (state is SignInFailure) {
                CustomAswesomeDialog().AwesomeDialogError(
                  context: context,
                  description: state.errmessage,
                );
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is SignInLoading,
                progressIndicator: CircularProgressIndicator(
                  color: ColorManager.primaryColor,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: TitleWidgetOfAuthViews(
                        textTitle: TextManger.signInText,
                      ),
                    ),
                    SectionOfLoginView(key: loginSectionKey),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
