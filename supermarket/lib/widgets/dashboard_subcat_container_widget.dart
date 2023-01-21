import 'package:flutter/material.dart';

import '../models/products_model.dart';
import '../serivces/api_handler.dart';

class ItemSubContainer extends StatefulWidget {
  ItemSubContainer({
    Key? key,
    required this.img,
    required this.subCat,
  }) : super(key: key);

  final String img;
  final String subCat;

  @override
  State<ItemSubContainer> createState() => _ItemSubContainerState();
}

class _ItemSubContainerState extends State<ItemSubContainer> {
  void didChangeDependencies() {
    getProducts();
    super.didChangeDependencies();
    // APIHandler.getAllProducts();
  }

  Future<void> getProducts() async {
    productsList = await APIHandler.getAllProducts();
  }

  List<ProductsModel> productsList = [];

  final String title = '';

  final String imageUrl = '';

  @override
  Widget build(BuildContext context) => GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ItemSubContainer(
            img: productsList[index].images![0],
            subCat: productsList[index].title.toString(),
          );
          // return Container(
          //   color: Colors.blue,
          //   child: Text("index: $index"),
          // );
        },
      );
}
