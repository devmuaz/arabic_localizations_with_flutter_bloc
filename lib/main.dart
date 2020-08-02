import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/Blocs/blocs.dart';
import 'src/Localization/app_localizations_setup.dart';
import 'src/Routes/app_routes.dart';
import 'src/Themes/app_themes.dart';
import 'src/Blocs/providers.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProviders.providers,
      child: BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previousState, currentState) => previousState != currentState,
        builder: (_, localeState) {
          // Since 'localeState' has only one STATE (SelectedLocale),
          // we don't need any if conditions here to check if there is
          // another state that can be emitted.
          return MaterialApp(
            title: 'Cubit Demo',
            onGenerateRoute: AppRoutes.onGenerateRoute,
            onUnknownRoute: AppRoutes.onUnkownRoute,
            theme: AppThemes.lightTheme,
            supportedLocales: AppLocalizationsSetup.supportedLocales,
            localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
            localeResolutionCallback: AppLocalizationsSetup.localeResolutionCallback,
            // Each time a new state emitted, the app will be rebuilt with the new
            // locale.
            locale: localeState.locale,
          );
        },
      ),
    );
  }
}
