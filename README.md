# Rest-Api-JWT-with-Dart-and-Angel


Running the migrations: dart bin/migrate.dart refresh  

- (POST) /auth/login {username, password}
- (POST) /auth/register {username, email, password}
- (POST) /auth/passwordCode {username, email}
- (GET) /auth/me {bearerToken}