import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my/models/products_model.dart';
import 'package:my/servises/all_products.dart';

import '../widgets/custom_card.dart';

class homeScreen extends StatelessWidget {
  static String routeName = 'homescreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
          child: FutureBuilder<List<productModel>>(
              future: allProducts().getAllProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List productsList=snapshot.data!;
                  return GridView.builder(
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.5,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 100),
                          itemCount: productsList.length,
                      itemBuilder: (context, index) {
                        return cardCustm(product: productsList[index],);
                      });
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              })),
    );
  }
}
