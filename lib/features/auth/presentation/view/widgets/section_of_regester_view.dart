import 'package:deeon/features/auth/presentation/view/bloc/signup_cubit/signup_cubit.dart';
import 'package:deeon/features/auth/presentation/view/widgets/buttons_regester_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild_regester_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_auth.dart';
import 'package:deeon/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectiomOfRegesterView extends StatefulWidget {
  const SectiomOfRegesterView({super.key});

  @override
  State<SectiomOfRegesterView> createState() => SectiomOfRegesterViewState();
}

class SectiomOfRegesterViewState extends State<SectiomOfRegesterView> {
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey();
  bool isSubmitted = false;
  String? email, name;

  void resetValidation() {
    if (isSubmitted) {
      formkey.currentState?.reset();
      setState(() {
        isSubmitted = false;
      });
    }
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: SectionOfAuth(
        formFields: CustomTextFeildRegesterSection(
          passwordController: passwordController,
          isSubmitted: isSubmitted,
          onChangedName: (value) {
            setState(() {
              name = value;
            });
          },
          onChangedEmail: (value) {
            setState(() {
              email = value;
            });
          },
        ),
        buttonBuilder: ButtonsRegesterSection(
          onPressed: () {
            setState(() {
              isSubmitted = true;
            });

            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (formkey.currentState!.validate()) {
                BlocProvider.of<SignupCubit>(
                  context,
                ).signUpWithEmailAndPassword(
                  email: email!,
                  password: passwordController.text,
                  fullName: name!,
                );
                Navigator.pushNamed(
                  context,
                  HomeView.id,
                  arguments: {'email': email, 'name': name},
                );
              }
            });
          },
        ),
      ),
    );
  }
}
