import 'package:deeon/core/helpers/custom_awesome_dialog.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/features/home/presentation/manager/customer_cubit/customer_cubit.dart';
import 'package:deeon/features/home/presentation/manager/search/search_cubit.dart';
import 'package:deeon/features/home/presentation/view/widgets/body_home_view.dart';
import 'package:deeon/features/home/presentation/view/widgets/content_draw_options.dart';
import 'package:deeon/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:deeon/features/home/presentation/view/widgets/custom_floating_action_button.dart';
import 'package:deeon/features/home/presentation/view/widgets/home_view_search.dart';
import 'package:deeon/features/home/presentation/view/widgets/user_account_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.email, required this.name});
  static String id = RouteManager.homeViewRoute;
  final String email;
  final String name;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    BlocProvider.of<CustomerCubit>(context).displayCustomer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SearchCubit(BlocProvider.of<CustomerCubit>(context).customers),
        ),
      ],
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: ColorManager.primaryColor,
            appBar: CustomAppBar(),
            drawer: Drawer(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Container(
                color: ColorManager.primaryColor,
                child: Column(
                  children: [
                    UserAccountSection(email: widget.email, name: widget.name),
                    ContentDrawOptions(),
                  ],
                ),
              ),
            ),
            body: BodyHomeView(),
            floatingActionButton: BlocListener<CustomerCubit, CustomerState>(
              listener: (context, state) {
                if (state is CustomerAddingSuccess) {
                  Navigator.pop(context);
                }
                if (state is CustomerFailure) {
                  CustomAswesomeDialog().AwesomeDialogError(
                    context: context,
                    description: state.error,
                  );
                }
              },
              child: CustomFloatingActionButton(),
            ),
          ),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is SearchShow ||
                  state is SearchCustomer ||
                  state is SearchNoResult) {
                return HomeViewSearch();
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
