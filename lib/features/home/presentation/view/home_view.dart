import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/presentation/view/widgets/body_home_view.dart';
import 'package:deeon/features/home/presentation/view/widgets/content_draw_options.dart';
import 'package:deeon/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:deeon/features/home/presentation/view/widgets/custom_floating_action_button.dart';
import 'package:deeon/features/home/presentation/view/widgets/user_account_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = RouteManager.homeViewRoute;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<CustomerModel> customers = [];
  @override
  Widget build(BuildContext context) {
    void addCustomer(CustomerModel customer) {
      setState(() {
        customers.add(customer);
      });
    }

    Map<String, dynamic> argument =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      appBar: CustomAppBar(),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Container(
          color: ColorManager.primaryColor,
          child: Column(
            children: [
              UserAccountSection(
                email: argument["email"],
                name: argument["name"],
              ),
              ContentDrawOptions(),
            ],
          ),
        ),
      ),
      body: BodyHomeView(customerModel: customers),
      floatingActionButton: CustomFloatingActionButton(
        onAddCustomer: addCustomer,
      ),
    );
  }
}
