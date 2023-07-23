class ApiConstants {
  static const String _baseUrl = 'http://api.weatherstack.com/';
  static const String _apiUrl = 'current?';
  static const String _accessKey = 'de35642f6c1478434d254926f88924aa';

  static String forecastApiApiUrl(String query) =>
      '$_baseUrl${_apiUrl}access_key=$_accessKey&query=$query';
}

class ErrorMessages {
  static const String noInternetError =
      'No internet found, please connect to the internet';
  static const String generalErrorMessage =
      'Something went wrong, Please retry again';
  static const String fetchApiErrorMessage =
      'Error getting weather forecast for city:';
}
