import 'package:angel_framework/angel_framework.dart';
import 'package:angel_framework/http.dart';
import 'package:angel_container/mirrors.dart';

import 'controller/auth.dart';
import 'controller/profile.dart';

main() async {
  Angel app = new Angel(reflector: MirrorsReflector());
  var http = AngelHttp(app);

  await app.configure(new AuthController().configureServer);

  await app.configure(new ProfileController().configureServer);

  await http.startServer('localhost', 3000);
}
