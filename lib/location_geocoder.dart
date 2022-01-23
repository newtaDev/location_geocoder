library location_geocoder;

export './geocoder.dart';

import 'services/distant_google.dart';

///creates LocatitonGeocoder `api_key` param is `required`
class LocatitonGeocoder extends GoogleGeocoding {
  /// Google map api key
  final String _apiKey;

  ///language
  final String? lang;

  ///creates LocatitonGeocoder `api_key` param is `required`
  LocatitonGeocoder(this._apiKey, {this.lang}) : super(_apiKey, language: lang);
}
