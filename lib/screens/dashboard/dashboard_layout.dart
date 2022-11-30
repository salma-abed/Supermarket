import 'package:application/constants.dart';
import 'package:application/models/card_model.dart';
import 'package:application/widgets/default_text_field/default_text_field.dart';
import 'package:application/widgets/navigation/navigation.dart';
import 'package:flutter/material.dart';

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
                text: "Dashboard",
                color: Colors.black,
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      navigateTo(context, UsersEditingView());
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
                    title: "Products",
                    num: "30",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  DashBoxWidget(
                    title: "Orders",
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
  final List<CardModel> users = [
    CardModel(
      title: "Mohamed Mounir",
      subTitle: "mounirmohamed43@gmail.com",
      image: "assets/user.jpg",
    ),
    CardModel(
      title: "Morad Mohamed",
      subTitle: "mounirmohamed43@gmail.com",
      image: "assets/user.jpg",
    ),
    CardModel(
      title: "Mustafa Mohamed",
      subTitle: "mounirmohamed43@gmail.com",
      image: "assets/user.jpg",
    ),
    CardModel(
      title: "Mohamed Mounir",
      subTitle: "mounirmohamed43@gmail.com",
      image: "assets/user.jpg",
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
                    text: "Users",
                    color: Colors.black,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: defaultTextField(
                        size: 24,
                        text: "Add Users +",
                        color: kPrimaryColor,
                      )),
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

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.cardModel,
    required this.onDelete,
  }) : super(key: key);

  final CardModel cardModel;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: kPrimaryColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            cardModel.image,
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  defaultTextField(
                    size: 20,
                    text: cardModel.title,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defaultTextField(
                      size: 14,
                      text: cardModel.subTitle,
                      color: kPrimaryColor,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2),
                ],
              )),
          SizedBox(
            width: 20,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: onDelete,
              child: Icon(
                Icons.delete_forever_rounded,
                color: kPrimaryColor,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
