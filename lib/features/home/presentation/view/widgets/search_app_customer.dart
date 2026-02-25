import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/features/home/presentation/manager/search/search_cubit.dart';
import 'package:deeon/features/home/presentation/view/widgets/text_feild_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchAppBarCustomer extends StatelessWidget
    implements PreferredSizeWidget {
  const SearchAppBarCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingManager.p8),
      child: AppBar(
        iconTheme: IconThemeData(color: ColorManager.appBarIconColor),
        leading: IconButton(
          onPressed: () {
            BlocProvider.of<SearchCubit>(context).cancelSearch();
          },
          icon: Icon(Icons.arrow_back, size: FontManager.font30),
        ),
        centerTitle: true,
        title: TextFeildAppBar(),
        backgroundColor: ColorManager.primaryColor,
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<SearchCubit>(context).cancelSearch();
            },
            icon: Icon(Icons.close, size: FontManager.font30),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(HeightManager.h60 + PaddingManager.p8 * 2);
}
