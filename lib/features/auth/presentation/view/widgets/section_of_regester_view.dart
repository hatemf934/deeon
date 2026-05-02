import 'package:deeon/features/auth/presentation/bloc/signup_cubit/signup_cubit.dart';
import 'package:deeon/features/auth/presentation/view/widgets/buttons_regester_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild_regester_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectiomOfRegesterView extends StatefulWidget {
  const SectiomOfRegesterView({
    super.key,
    required this.emailController,
    required this.nameController,
  });

  final TextEditingController emailController;
  final TextEditingController nameController;
  @override
  State<SectiomOfRegesterView> createState() => SectiomOfRegesterViewState();
}

class SectiomOfRegesterViewState extends State<SectiomOfRegesterView> {
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey();
  bool isSubmitted = false;

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
          emailController: widget.emailController,
          nameController: widget.nameController,
        ),
        buttonBuilder: ButtonsRegesterSection(
          onPressed: () {
            setState(() {
              isSubmitted = true;
            });

            if (formkey.currentState!.validate()) {
              formkey.currentState!.save();
              BlocProvider.of<SignupCubit>(context).signUpWithEmailAndPassword(
                email: widget.emailController.text,
                password: passwordController.text,
                fullName: widget.nameController.text,
              );
            }
          },
        ),
      ),
    );
  }
}
