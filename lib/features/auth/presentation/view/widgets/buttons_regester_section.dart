import 'package:deeon/core/helpers/is_arabic.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/features/auth/presentation/view/login_view.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_button.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:flutter/material.dart';

class ButtonsRegesterSection extends StatelessWidget {
  const ButtonsRegesterSection({super.key, required this.onPressed});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          onPressed: onPressed,
          text: S.of(context).createAccount,
        ),
        SizedBox(height: HeightManager.h20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).haveAccount,
              style: isArabic()
                  ? Styles.textStyle22.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorManager.primaryColor,
                    )
                  : Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorManager.primaryColor,
                    ),
            ),
            CustomTextButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginView.id);
              },
              textButton: S.of(context).signText,
            ),
          ],
        ),
      ],
    );
  }
}
