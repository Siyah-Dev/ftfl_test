import '../../domain/entities/interest_entity.dart';

class InterestItemModel extends InterestEntity {
  const InterestItemModel({required super.title, required super.icon});

  factory InterestItemModel.fromJson(Map<String, dynamic> json) {
    return InterestItemModel(title: json["title"], icon: json["icon"]);
  }

  Map<String, dynamic> toJson() {
    return {"title": title, "icon": icon};
  }
}
