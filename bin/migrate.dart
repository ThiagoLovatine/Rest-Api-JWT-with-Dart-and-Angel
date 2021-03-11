import 'package:angel_migration_runner/angel_migration_runner.dart';
import 'package:angel_migration_runner/postgres.dart';
import 'package:postgres/postgres.dart';

import 'migration/user.dart';

var migrationRunner = PostgresMigrationRunner(
  PostgreSQLConnection('localhost', 5434, 'angel_api',
      username: 'teste123', password: 'teste123'),
  migrations: [
    UserMigration(),
  ],
);

main(List<String> args) => runMigrations(migrationRunner, args);
