import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my/models/products_model.dart';
import 'package:my/servises/update_product.dart';
import 'package:my/widgets/custom_butoon.dart';
import 'package:my/widgets/custom_text_feild.dart';

class updateScreen extends StatefulWidget {
  static String routeName = 'updateScreen';

  @override
  State<updateScreen> createState() => _updateScreenState();
}

class _updateScreenState extends State<updateScreen> {
  dynamic? title, img, des;

  dynamic? price;
  bool isLoding = false;

  @override
  Widget build(BuildContext context) {
    productModel argsProduct =
        ModalRoute.of(context)!.settings.arguments as productModel;
    return ModalProgressHUD(
      inAsyncCall: isLoding,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  onChange: (data) {
                    title = data;
                  },
                  hint: 'product Name',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChange: (data) {
                    des = data;
                  },
                  hint: 'Description',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  keyboardTypee: TextInputType.number,
                  onChange: (data) {
                    price = data;
                  },
                  hint: 'Price',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChange: (data) {
                    img = data;
                  },
                  hint: 'image',
                ),
                SizedBox(
                  height: 50,
                ),
                customBotton(
                  text: 'Update',
                  onTap: ()async {
                    isLoding = true;
                    setState(() {});
                    try {
                     await updateeProduct(argsProduct);
                      print('sucsses');
                    }catch (e) {
                      print(e.toString());
                    }
                    isLoding=false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

 Future <void> updateeProduct(productModel product)async {
   await updateProduct().updateeProduct(
      title:title==null ?product.tittle : title,
      price: price==null?product.price.toString() : price,
      description: des==null?product.tittle :des,
      image: img==null? product.image:img,
      id: product.id
    );
    isLoding = false;
  }
}
