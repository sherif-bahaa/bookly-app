import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,required this.onChanged,required this.controller});
final Function(String)? onChanged;
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller ,
      onChanged:onChanged ,
      decoration: InputDecoration(
        hintText: 'Search',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        suffixIcon: Icon(Icons.search),
      ),
    );
  }
}
