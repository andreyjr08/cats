class BreedImageEntity {
  String? id;
  String? url;

  BreedImageEntity({this.id, this.url});

  factory BreedImageEntity.fromJson(Map<String, dynamic> json) {
    return BreedImageEntity(id: json["id"], url: json["url"]);
  }
}
