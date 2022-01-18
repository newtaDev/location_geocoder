# location_geocoder

## Getting Started

> #### ADD YOUR MAP API KEY

To Get Address from Coordinates

```dart
        final LocatitonGeocoder geocoder = LocatitonGeocoder(_apiKey);
        final address = await geocoder
            .findAddressesFromCoordinates(Coordinates(9.9312, 76.2673));
        print(address.first.addressLine);
```

To Get Coordinates from Address

```dart
        final LocatitonGeocoder geocoder = LocatitonGeocoder(_apiKey);
        final address = await geocoder.findAddressesFromQuery('kochi,kerala');;
        print(address.first.addressLine);
```
