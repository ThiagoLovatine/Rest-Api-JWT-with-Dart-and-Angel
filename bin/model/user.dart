import 'package:angel_serialize/angel_serialize.dart';
import 'package:angel_orm/angel_orm.dart';

@orm
@serializable
abstract class User extends Model {
  @primaryKey
  String get username;
  String get password;
}
