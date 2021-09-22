import 'package:flutter/material.dart';
import 'package:just_movie_it/shared/ui/components/components.dart';

class EmailInput extends StatelessWidget {
  final TextEditingController controller;
  const EmailInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Email Input',
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        height: 60,
        decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: Theme.of(context).textTheme.subtitle1,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
