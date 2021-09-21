import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:just_movie_it/modules/authentication/presentation/presenters/login/cubit_login_presenter.dart';
import 'package:just_movie_it/modules/authentication/ui/components/components.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController controller;
  const PasswordInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<CubitLoginPresenter>();
    return Semantics(
      label: 'Password Input',
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        height: 60,
        decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          validator: (value) => presenter.validatePassword(value),
          controller: controller,
          keyboardType: TextInputType.visiblePassword,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: Theme.of(context).textTheme.subtitle1,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: const Icon(Icons.visibility_off),
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
