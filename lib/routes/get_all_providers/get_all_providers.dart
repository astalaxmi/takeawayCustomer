import 'package:cusmerraj/presentation/root_screen/rootViewmodel/rootViewmodel.dart';
import 'package:provider/provider.dart';

getAllProviders() {
  return [
    ChangeNotifierProvider(
      create: (_) => RootViewModel(),
    ),
  ];
}
