# Rest-Api-JWT-with-Dart-and-Angel


Running the migrations: dart bin/migrate.dart refresh  

- (POST) localhost:3000/auth/login {username, password}
- (POST) localhost:3000/auth/register {username, email, password}
- (POST) localhost:3000/auth/passwordCode {username, email}
- (GET) localhost:3000/auth/me {bearerToken}