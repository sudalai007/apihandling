class UserLocation {
  final LocationStreet street;
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationCoordinate coordinates;
  final LocationTimeZone timezone;

  UserLocation(
      {required this.street,
      required this.city,
      required this.state,
      required this.country,
      required this.postcode,
      required this.coordinates,
      required this.timezone});

  factory UserLocation.fromMap(Map<String, dynamic> json) {
    final street = LocationStreet.fromMap(json['street']);
    final coordinates = LocationCoordinate.fromMap(json['coordinates']);
    final timezone = LocationTimeZone.fromMap(json['timezone']);

    return UserLocation(
        street: street,
        city: json['city'],
        state: json['state'],
        country: json['country'],
        postcode: json['postcode'].toString(),
        coordinates: coordinates,
        timezone: timezone);
  }
}

class LocationStreet {
  final int number;
  final String name;

  LocationStreet({required this.number, required this.name});

  factory LocationStreet.fromMap(Map<String, dynamic> json) {
    return LocationStreet(number: json['number'], name: json['name']);
  }
}

class LocationCoordinate {
  final String latitude;
  final String longitude;

  LocationCoordinate({required this.latitude, required this.longitude});

  factory LocationCoordinate.fromMap(Map<String, dynamic> json) {
    return LocationCoordinate(
        latitude: json['latitude'], longitude: json['longitude']);
  }
}

class LocationTimeZone {
  final String offset;
  final String description;

  LocationTimeZone({required this.offset, required this.description});

  factory LocationTimeZone.fromMap(Map<String, dynamic> json) {
    return LocationTimeZone(
        offset: json['offset'], description: json['description']);
  }
}
