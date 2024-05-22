import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class CustomTextFiled extends StatefulWidget {
  final String hintTex;
  final String? helperTex;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final void Function()? onTap;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final int maxLines;
  final int errorMaxLines;
  final double helperTexSize;
  final bool obscureText;
  final bool readOnly;
  final TextInputType? keyboardType;
  final Color borderColor;
  final Color fillColor;
  final Color helperTextColor;
  final Color hintsColor;
  final double borderRadius;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFiled({
    Key? key,
    required this.hintTex,
    this.helperTex,
    this.focusNode,
    this.controller,
    this.onTap,
    this.onSaved,
    this.validator,
    this.maxLines = 1,
    this.errorMaxLines = 2,
    this.obscureText = false,
    this.readOnly = false,
    this.keyboardType,

    required this.fillColor ,
    this.helperTextColor = Colors.black,
    this.hintsColor = Colors.purple,
    this.borderRadius = 8,
    this.suffixIcon,
    this.prefixIcon,
    this.helperTexSize = 12,
    this.onChanged,
    this.inputFormatters,
    this.textInputAction, required this.borderColor,
  }) : super(key: key);


  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(widget.helperTex!=null)...[
          Text(widget.helperTex??"",
              maxLines: 1,
              style: Get.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: widget.helperTexSize,
                  color: widget.helperTextColor)),
          SizedBox(height: 2,),
        ],

        TextFormField(
          scrollPadding: const EdgeInsets.all(0),
          onChanged: widget.onChanged,
          style:Get.textTheme.titleMedium!.copyWith(color:Get.theme.colorScheme.secondary,fontWeight: FontWeight.w600,fontSize: 16 ),
          focusNode:widget.focusNode ,
          controller: widget.controller,
          onTap: widget.onTap,
          onSaved: widget.onSaved,
          validator: widget.validator,
          autovalidateMode:AutovalidateMode.onUserInteraction,
          maxLines: widget.maxLines,
          readOnly: widget.readOnly,
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText ? _obscureText : false,
          //obscuringCharacter: "*",
          
          cursorRadius: const Radius.circular(50),
          inputFormatters: widget.inputFormatters,
          textInputAction: widget.textInputAction,
          decoration: InputDecoration(
            
              errorMaxLines: widget.errorMaxLines,
              helperText: null,
              prefixIcon: widget.prefixIcon,
              suffixIcon:  widget.obscureText ?
              Padding(
                padding: const EdgeInsets.only(right: 14,left: 8),
                child: InkWell(
                  onTap: _toggle,
                  child: Icon(_obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: Theme.of(context).hintColor.withOpacity(0.5)),
                ),
              ) : widget.suffixIcon,

              filled: true,
              fillColor: widget.fillColor,
              // isDense: true,
              suffixIconConstraints: const BoxConstraints(maxHeight: 33,),
              contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical:18), // old
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  borderSide: BorderSide(
                    color: widget.borderColor,
                    width: 1.5,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  borderSide: BorderSide(
                    color: widget.borderColor.withOpacity(0.70),
                    width: 1.5,
                  )),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  borderSide: BorderSide(
                    color: widget.borderColor.withOpacity(0.50),
                    width: 1.5,
                  )),
              hintText: widget.hintTex,
              hintStyle: Get.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: widget.hintsColor,)
          ),
        )
      ],
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
