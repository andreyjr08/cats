class BreedsEntity {
  String? id;
  String? name;
  String? origin;
  String? referenceImageId;

  BreedsEntity({this.id, this.name, this.origin, this.referenceImageId});

  factory BreedsEntity.fromJson(Map<String, dynamic> json) {
    return BreedsEntity(
      id: json["id"],
      name: json["name"],
      origin: json["origin"],
      referenceImageId: json["reference_image_id"],
    );
  }
}
