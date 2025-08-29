class BreedsEntity {
  String? id;
  String? name;
  String? origin;

  BreedsEntity({this.id, this.name, this.origin});

  factory BreedsEntity.fromJson(Map<String, dynamic> json) {
    return BreedsEntity(
      id: json["id"],
      name: json["name"],
      origin: json["origin"],
    );
  }
}
