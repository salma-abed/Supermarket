import 'package:flutter/material.dart';

import 'default_form_field.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: defaultFormField(
            validate: (value) {
              if (value!.isEmpty) {
                return '  ';
              }
              return null;
            },
            controller: _searchController,
            type: TextInputType.name,
            prefix: Icons.search,
            hint: 'Search products here',
            hintstyle: TextStyle(fontWeight: FontWeight.w800),
            contentpadding: EdgeInsets.only(left: 10),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent),
            )),
      ),
    );
  }
}
