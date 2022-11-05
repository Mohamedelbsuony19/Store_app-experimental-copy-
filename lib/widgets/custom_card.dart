
import 'package:flutter/material.dart';
import 'package:my/models/products_model.dart';
import 'package:my/screens/update_screen.dart';

class cardCustm extends StatelessWidget {
   cardCustm({
    required this.product
  });
  productModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, updateScreen.routeName,arguments: product);
      },
      child: Stack(
        clipBehavior:Clip.none,
        children: [
         
          Container(
            width: 220,
            height: 150,
            decoration: BoxDecoration(boxShadow:[
              BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0,
                offset: Offset(10, 10)
              )
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.tittle.substring(0,6),style
                    :TextStyle(color: Colors.grey ,fontSize: 20),),
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$' '${product.price.toString()}',style: TextStyle(fontSize: 15),),
                        Icon(Icons.favorite ,color: Colors.red,)
                      ],
                    )
                    
                  ],
                ),
              ),
            ),
          ),
           Positioned(
            right: 32,
            top: -60,
            
             child: Container(
              child: Image.network(product.image
              ,height: 100,
              width: 110,
              ),
                     ),
           ),
           
        ],
      ),
    );
  }
}
