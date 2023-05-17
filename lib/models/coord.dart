class Coord {
  final double lon;
  final double lat;

  Coord({required this.lon, required this.lat});

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
      lon: json['lon'],
      lat: json['lat'],
    );
  }
}



// class Coord {
//   final double lon;
//   final double lat;

//   Coord(this.lon, this.lat);

//   factory Coord.fromJson(dynamic json) {
//     if(json == null) {
//       return Coord();
//     }
//     return Coord(lon: json["lon"], lat: json['lat']);
//   }
// }