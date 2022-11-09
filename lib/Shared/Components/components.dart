import 'package:flutter/material.dart';

// Widget defaultButton({
//   double width = double.infinity,
//   background = Colors.blue,
//   required String text,
//   required Null Function() function,
// }) =>Container(
//       width: width,
//       color: background,
//       child: MaterialButton(
//         onPressed: function,
//         child: Text(
//           text,
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required Null Function() function,
  required String text,
}) => Container(
  width: width,
  height: 50.0,
  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      radius,
    ),
    color: background,
  ),
);

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  final void Function(String?)? onSubmit,
  final void Function(String?)? onChange,
  bool isPassword = false,
  required final FormFieldValidator<String>? validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  final Function()? suffixPressed,
  bool isClickable = true,
}) => TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  enabled: isClickable,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  validator: validate,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(
      prefix,
    ),
    suffixIcon: suffix != null
        ? IconButton(
      onPressed: suffixPressed,
      icon: Icon(
        suffix,
      ),
    )
        : null,
    border: OutlineInputBorder(),
  ),
);