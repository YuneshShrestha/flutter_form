// To parse this JSON data, do
//
//     final districtModel = districtModelFromJson(jsonString);

import 'dart:convert';

List<DistrictModel> districtModelFromJson(String str) =>
    List<DistrictModel>.from(
        json.decode(str).map((x) => DistrictModel.fromJson(x)));

String districtModelToJson(List<DistrictModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DistrictModel {
  DistrictModel({
    required this.id,
    required this.districtModelId,
    required this.bbox,
    required this.centroid,
    required this.title,
    required this.titleEn,
    required this.titleNe,
    required this.code,
    required this.province,
  });

  String id;
  int districtModelId;
  List<double> bbox;
  Centroid centroid;
  String title;
  String titleEn;
  String titleNe;
  String code;
  int province;

  factory DistrictModel.fromJson(Map<String, dynamic> json) => DistrictModel(
        id: json["_id"],
        districtModelId: json["id"],
        bbox: List<double>.from(json["bbox"].map((x) => x.toDouble())),
        centroid: Centroid.fromJson(json["centroid"]),
        title: json["title"],
        titleEn: json["title_en"],
        titleNe: json["title_ne"],
        code: json["code"],
        province: json["province"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "id": districtModelId,
        "bbox": List<dynamic>.from(bbox.map((x) => x)),
        "centroid": centroid.toJson(),
        "title": title,
        "title_en": titleEn,
        "title_ne": titleNe,
        "code": code,
        "province": province,
      };
}

class Centroid {
  Centroid({
    required this.type,
    required this.coordinates,
  });

  Type? type;
  List<double> coordinates;

  factory Centroid.fromJson(Map<String, dynamic> json) => Centroid(
        type: typeValues.map[json["type"]],
        coordinates:
            List<double>.from(json["coordinates"].map((x) => x.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
      };
}

enum Type { POINT }

final typeValues = EnumValues({"Point": Type.POINT});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
