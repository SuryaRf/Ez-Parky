class PlaceRecomendation {
  final String name;
  final String type;
  final String duration;
  final String distance;
  final String description;
  final String? img;

  PlaceRecomendation(
      {required this.name,
      required this.type,
      required this.distance,
      required this.duration,
      required this.description,
      this.img});
}
