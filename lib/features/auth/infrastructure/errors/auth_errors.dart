class WrongCredentials implements Exception {
  
}

class InvalidToken implements Exception {

}

class ConnectionTimeout implements Exception{

}

class CustomError implements Exception {
  // final int errorCode ;
  final String message ;
  final bool loggedRequired ;

  // CustomError({required this.message, required this.errorCode});
  CustomError({required this.message , this.loggedRequired = false});

}
