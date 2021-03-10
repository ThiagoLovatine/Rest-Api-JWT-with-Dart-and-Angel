import 'package:angel_migration/angel_migration.dart';

class UserMigration implements Migration {
  @override
  void up(Schema schema) {
    schema.create('users', (table) {
      table
        ..serial('id').primaryKey()
        ..varChar('username', length: 32).unique()
        ..varChar('password')
        ..boolean('account_confirmed').defaultsTo(false);
    });
  }

  @override
  void down(Schema schema) {
    schema.drop('users');
  }
}
