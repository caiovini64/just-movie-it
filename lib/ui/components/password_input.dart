import 'package:flutter/material.dart';
import 'package:just_movie_it/ui/components/app_colors.dart';
import 'package:just_movie_it/ui/pages/login/login_presenter.dart';
import 'package:provider/provider.dart';

class PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<LoginPresenter>(context);
    return StreamBuilder<String>(
      stream: presenter.passwordErrorStream,
      builder: (context, snapshot) {
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
              keyboardType: TextInputType.visiblePassword,
              style: Theme.of(context).textTheme.bodyText1,
              onChanged: presenter.validatePassword,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: Theme.of(context).textTheme.subtitle1,
                errorText: snapshot.hasData ? snapshot.data : '',
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
      },
    );
  }
}
