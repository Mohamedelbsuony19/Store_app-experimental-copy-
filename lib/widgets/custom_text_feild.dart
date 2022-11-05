import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({this.onChange, this.hint,this.obscureText=false,this.keyboardTypee});
String? hint;
bool? obscureText;
TextInputType? keyboardTypee;
Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return 
          TextField(
             style: TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
             keyboardType:keyboardTypee,
            obscureText:obscureText!,
            // validator: (data){
            //   if(data!.isEmpty){
            //     return 'Is Empty!!';
            //   }
            // },
            onChanged:onChange ,
            decoration: InputDecoration(
              hintText:hint ,
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 209, 133, 127)),
                borderRadius: BorderRadius.circular(16 )
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.circular(16 )
              )
            ),
          );
  }
}