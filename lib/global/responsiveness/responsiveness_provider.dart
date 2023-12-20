import '../../gallery_exporter.dart';

//* this provides the overall responsiveness of our app

final responsivenessProvider = Provider.family<Responsiveness, BuildContext>((ref, ctx) {
  return Responsiveness(context: ctx);
});
