import 'package:angel_framework/angel_framework.dart';

@Expose("/auth")
class AuthController extends Controller {
  @Expose("/login", method: "POST")
  login(req, res) async {
    await req.parseBody();

    var username = req.bodyAsMap['username'] as String;
    var password = req.bodyAsMap['password'] as String;

    return {"username": username, "password": password};
  }

  @Expose("/register", method: "POST")
  register(req, res) async {
    await req.parseBody();

    var username = req.bodyAsMap['username'] as String;
    var password = req.bodyAsMap['password'] as String;

    return res.write({username, password});
  }
}
