import 'package:deeon/features/auth/presentation/view/widgets/button_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild_section.dart';
import 'package:deeon/features/auth/presentation/view/widgets/section_of_auth.dart';
import 'package:deeon/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

class SectionOfLoginView extends StatefulWidget {
  const SectionOfLoginView({super.key});

  @override
  State<SectionOfLoginView> createState() => SectionOfLoginViewState();
}

class SectionOfLoginViewState extends State<SectionOfLoginView> {
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
        formFields: CustomTextFeildSection(isSubmitted: isSubmitted),
        buttonBuilder: ButtonsSection(
          onPressed: () {
            setState(() {
              isSubmitted = true;
            });
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (formkey.currentState!.validate()) {
                Navigator.pushNamed(context, HomeView.id);
              }
            });
          },
        ),
      ),
    );
  }
}
