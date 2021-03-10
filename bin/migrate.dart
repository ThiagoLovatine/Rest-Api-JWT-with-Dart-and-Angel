import 'package:angel_migration_runner/angel_migration_runner.dart';
import 'package:angel_migration_runner/postgres.dart';
import 'package:postgres/postgres.dart';

import 'migration/user.dart';

var migrationRunner = PostgresMigrationRunner(
  PostgreSQLConnection('127.0.0.1', 5432, 'angel_api'),
  migrations: [
    UserMigration(),
  ],
);

main(List<String> args) => runMigrations(migrationRunner, args);
