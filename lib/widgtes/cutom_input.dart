import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  const CustomInput({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
  
}



class _CustomInputState extends State<CustomInput> {
  late bool _obscure;
@override
    void initState() {
    super.initState();
    _obscure = widget.obscureText; // start with initial value
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: _obscure,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            hintText: widget.hintText,
            fillColor: Color.fromRGBO(249, 249, 249, 1),
            filled: true,
            suffixIcon: widget.obscureText
                ? IconButton(
                    icon: Icon(
                      _obscure ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscure = !_obscure;
                      });
                    },
                  )
                : null, //
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
