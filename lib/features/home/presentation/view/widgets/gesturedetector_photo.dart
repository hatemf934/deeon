import 'dart:io';
import 'package:deeon/core/utils/assets_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/presentation/manager/account/account_cubit.dart';
import 'package:deeon/features/home/presentation/view/widgets/details_photo.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class GesturedetectorPhoto extends StatelessWidget {
  const GesturedetectorPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountCubit, AccountState>(
      builder: (context, state) {
        XFile? profileImage;
        if (state is AccountGettingPicture) {
          profileImage = XFile(state.accountModel.proFilePicture);
        }
        return GestureDetector(
          onTap: () {
            final cubit = BlocProvider.of<AccountCubit>(context);
            context.pushTransparentRoute(
              DetailsPhoto(
                initialImage: profileImage,
                onImageChanged: (value) {
                  if (value != null) {
                    cubit.addAccount(value);
                  }
                },
              ),
            );
          },
          child: Hero(
            tag: TextManger.profileTag,
            child: ClipOval(
              child: profileImage == null
                  ? Image.asset(AssetsManager.kProfile, fit: BoxFit.cover)
                  : Image.file(File(profileImage.path)),
            ),
          ),
        );
      },
    );
  }
}
