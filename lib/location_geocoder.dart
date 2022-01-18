library location_geocoder;

export './geocoder.dart';

import 'services/distant_google.dart';

class LocatitonGeocoder extends GoogleGeocoding {
  final String _apiKey;
  final String? lang;
  LocatitonGeocoder(this._apiKey, {this.lang}) : super(_apiKey, language: lang);
}
