import 'package:deeon/constant.dart';
import 'package:deeon/core/helpers/custom_awesome_dialog.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/data/repos/auth_repo_impl.dart';
import 'package:deeon/features/auth/presentation/bloc/signup_cubit/signup_cubit.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_regester_view.dart';
import 'package:deeon/features/auth/presentation/view/widgets/title_widget_of_auth_views.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegesterVew extends StatefulWidget {
  const RegesterVew({super.key});
  static String id = RouteManager.regesterRoute;

  @override
  State<RegesterVew> createState() => _RegesterVewState();
}

class _RegesterVewState extends State<RegesterVew> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final GlobalKey<SectiomOfRegesterViewState> regesterSectionKey =
      GlobalKey<SectiomOfRegesterViewState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(AuthRepoImpl()),
      child: GestureDetector(
        onTap: () {
          regesterSectionKey.currentState?.resetValidation();
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: ColorManager.primaryColor,
          body: BlocConsumer<SignupCubit, SignupState>(
            listener: (context, state) async {
              final boxName =
                  "$customerBox${FirebaseAuth.instance.currentUser!.uid}";
              if (state is SignupSucsses) {
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
              } else if (state is SignupFailure) {
                CustomAswesomeDialog().AwesomeDialogError(
                  context: context,
                  description: state.errmessage,
                );
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is SignupLoading,
                progressIndicator: CircularProgressIndicator(
                  color: ColorManager.primaryColor,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: TitleWidgetOfAuthViews(
                        textTitle: TextManger.createAccount,
                      ),
                    ),
                    SectiomOfRegesterView(
                      emailController: emailController,
                      nameController: nameController,
                      key: regesterSectionKey,
                    ),
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
