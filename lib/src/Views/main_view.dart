import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Blocs/blocs.dart';
import '../Localization/app_localizations.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(context),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(AppLocalizations.of(context).translate('app_bar_title')),
      leading: IconButton(
        icon: Icon(Icons.translate),
        onPressed: () {
          if (AppLocalizations.of(context).isEnLocale) {
            BlocProvider.of<LocaleCubit>(context).toArabic();
          } else {
            BlocProvider.of<LocaleCubit>(context).toEnglish();
          }
        },
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: <Widget>[
              Text(
                AppLocalizations.of(context).translate('head_title'),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
