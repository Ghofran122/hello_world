import 'package:flutter/material.dart';

Widget defaultTextFormField({
  required String textLable,
  required Icon pIcon,
  required TextInputType textInputType,
  required TextEditingController controllerText,
  required Function validat,
  bool isPass = false,
  Icon? sIcon,
  Function? onPressPass,
}) => Material(
  elevation: 10.0,
  borderRadius: BorderRadiusDirectional.circular(30.0),
  shadowColor: Colors.grey[100],
  child: TextFormField(
    controller: controllerText,
    validator: (value){
      validat(value);
    },
    decoration: InputDecoration(
      labelText: textLable,
      labelStyle: TextStyle(
        fontStyle: FontStyle.italic,
        color: Colors.grey[400],
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide.none,
      ),
      prefixIcon: pIcon,
      suffixIcon: sIcon != null ? IconButton(
        onPressed: (){
          onPressPass!();
        },
        icon: sIcon) : null,
      filled: true,
      fillColor: Colors.white,
    ),
    keyboardType: textInputType,
    obscureText: isPass,
  ),
);

Widget defaultMaterialButton({
  Color? colorMaterialButton,
  required Icon icon,
  double weidth = 50.0,
  BorderSide borderSideButton = BorderSide.none,
  required Function onPresse,
}) => MaterialButton(
  onPressed: (){
      onPresse();
    },
  color: colorMaterialButton,
  child: icon,
  shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: borderSideButton,
  ),
  minWidth: weidth,
);
