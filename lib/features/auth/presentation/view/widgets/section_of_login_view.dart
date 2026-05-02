import 'package:deeon/features/auth/presentation/bloc/signin_cubit/signin_cubit.dart';
import 'package:deeon/features/auth/presentation/view/widgets/button_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild_login_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionOfLoginView extends StatefulWidget {
  const SectionOfLoginView({super.key});

  @override
  State<SectionOfLoginView> createState() => SectionOfLoginViewState();
}

class SectionOfLoginViewState extends State<SectionOfLoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isSubmitted = false;
  final GlobalKey<FormState> formkey = GlobalKey();
  void resetValidation() {
    if (isSubmitted) {
      formkey.currentState?.reset();
      setState(() {
        isSubmitted = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: SectionOfAuth(
        formFields: CustomTextFeildSectionLogin(
          isSubmitted: isSubmitted,
          passwordController: passwordController,
          emailController: emailController,
        ),
        buttonBuilder: ButtonsSection(
          onPressed: () {
            setState(() {
              isSubmitted = true;
            });
            if (formkey.currentState!.validate()) {
              formkey.currentState!.save();
              BlocProvider.of<SigninCubit>(context).loginUser(
                email: emailController.text,
                password: passwordController.text,
              );
            }
          },
        ),
      ),
    );
  }
}
