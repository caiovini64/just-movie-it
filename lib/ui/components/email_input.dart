import 'package:flutter/material.dart';
import 'package:just_movie_it/ui/components/app_colors.dart';
import 'package:just_movie_it/ui/pages/login/login_presenter.dart';
import 'package:provider/provider.dart';

class EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<LoginPresenter>(context);
    return StreamBuilder<String>(
      stream: presenter.emailErrorStream,
      builder: (context, snapshot) {
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
              keyboardType: TextInputType.emailAddress,
              style: Theme.of(context).textTheme.bodyText2,
              onChanged: presenter.validateEmail,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: Theme.of(context).textTheme.subtitle1,
                errorText: snapshot.hasData ? snapshot.data : '',
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
      },
    );
  }
}
