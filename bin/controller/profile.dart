import 'package:angel_framework/angel_framework.dart';

import '../middleware/auth.dart';

@Expose("/profile")
class ProfileController extends Controller {
  @Expose("/me", method: "GET")
  me(req, res) async {
    if (auth(req, res)) {
      return {"message": "YaY"};
    } else {
      return {"message": "Buaa buaaa"};
    }
  }
}
