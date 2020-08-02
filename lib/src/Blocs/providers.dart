import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs.dart';

class BlocProviders {
  static final List<BlocProvider> providers = [
    BlocProvider<LocaleCubit>(create: (_) => LocaleCubit()),
    // .
    // .
    // .
    // other blocs or cubits...
  ];
}
