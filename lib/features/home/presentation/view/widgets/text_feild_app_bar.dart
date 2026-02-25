import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/presentation/manager/search/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFeildAppBar extends StatelessWidget {
  const TextFeildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        BlocProvider.of<SearchCubit>(context).searchCustomer(value);
      },
      style: TextStyle(color: ColorManager.blackColor),
      cursorColor: ColorManager.primaryColor,
      decoration: InputDecoration(
        fillColor: ColorManager.fillColor,
        filled: true,
        hint: Text(
          TextManger.searchCustomer,
          style: TextStyle(color: ColorManager.black26),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusManager.r20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
