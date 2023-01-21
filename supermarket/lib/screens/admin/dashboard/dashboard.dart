// import 'package:application/constants.dart';
// import 'package:application/models/card_model.dart';
// import 'package:application/widgets/default_text_field/default_text_field.dart';
// import 'package:application/widgets/navigation/navigation.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/card_models.dart';
import '../../../widgets/card_widget.dart';
import '../../../widgets/default_text_filed.dart';
import 'package:go_router/go_router.dart';

// import 'package:rflutter_alert/rflutter_alert.dart';

// import '../../widgets/card_widget/card_widget.dart';
// import '../../widgets/default_button/default_button.dart';
// import '../../widgets/form_field/default_form_field.dart';

class DashBoardLayout extends StatelessWidget {
  const DashBoardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultTextField(
                size: 24,
                text: 'Dashboard',
                color: Colors.black,
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go("/UserEditingView");
                    },
                    child: DashBoxWidget(
                      title: "Users",
                      num: "30",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  DashBoxWidget(
                    title: 'Products',
                    num: "30",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  DashBoxWidget(
                    title: 'Orders',
                    num: "30",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class DashBoxWidget extends StatelessWidget {
  const DashBoxWidget({
    Key? key,
    required this.title,
    required this.num,
  }) : super(key: key);

  final String title, num;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: padding,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultTextField(
            size: 24,
            text: title,
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          defaultTextField(
            size: 16,
            text: num,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class UsersEditingView extends StatefulWidget {
  UsersEditingView({super.key});

  @override
  State<UsersEditingView> createState() => _UsersEditingViewState();
}

class _UsersEditingViewState extends State<UsersEditingView> {
  // var _formKey = GlobalKey<FormState>();
  // TextEditingController _emailEditingController = TextEditingController();

  // TextEditingController _passwordEditingController = TextEditingController();
  // TextEditingController _phonenumberEditingController = TextEditingController();

  // TextEditingController _firstnameEditingController = TextEditingController();
  // TextEditingController _lastnameEditingController = TextEditingController();
  final List<CardModel> users = [
    CardModel(
      title: 'Mohamed Mounir',
      subTitle: 'mounirmohamed43@gmail.com',
      image: 'assets/user.jpg',
    ),
    CardModel(
      title: 'Morad Mohamed',
      subTitle: 'mounirmohamed43@gmail.com',
      image: 'assets/user.jpg',
    ),
    CardModel(
      title: 'Mustafa Mohamed',
      subTitle: 'mounirmohamed43@gmail.com',
      image: 'assets/user.jpg',
    ),
    CardModel(
      title: 'Mohamed Mounir',
      subTitle: 'mounirmohamed43@gmail.com',
      image: 'assets/user.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: padding,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  defaultTextField(
                    size: 26,
                    text: 'Users',
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CardWidget(
                      cardModel: users[index],
                      onDelete: () {
                        setState(() {
                          users.removeAt(index);
                        });
                      }),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 25,
                      ),
                  itemCount: users.length)
            ],
          ),
        ),
      )),
    );
  }
}
