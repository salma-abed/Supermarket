import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../models/card_models.dart';
import 'default_text_filed.dart';

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
