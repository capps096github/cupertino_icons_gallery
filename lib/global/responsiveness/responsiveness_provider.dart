import 'package:riverpod/src/providers/provider.dart';

import '../../app_exporter.dart';

//* this provides the overall responsiveness of our app
///[responsivenessProvider] provides the overall responsiveness of our app
final ProviderFamily<Responsiveness, BuildContext> responsivenessProvider =
    Provider.family<Responsiveness, BuildContext>((ref, ctx) {
  return Responsiveness(context: ctx);
});
