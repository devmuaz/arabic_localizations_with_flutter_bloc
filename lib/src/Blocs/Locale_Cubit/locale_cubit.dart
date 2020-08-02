import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' show Locale;
import 'package:meta/meta.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  // Passing an initial value (state) with a default 'Locale' to the super class.
  LocaleCubit() : super(SelectedLocale(Locale('en')));

  // Once we call this method, the BlocBuilder<LocaleCubit>
  // in the 'main.dart' will rebuild the entire app with
  // the new emitted state that holds the 'ar' locale.
  void toArabic() => emit(SelectedLocale(Locale('ar')));

  // Same as the previous method, but with the 'en' locale.
  void toEnglish() => emit(SelectedLocale(Locale('en')));
}
