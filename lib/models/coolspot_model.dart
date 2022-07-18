part of 'model.dart';

class CoolspotModel extends Equatable {
  final String id;
  final String name;
  final String imageUrl;

  CoolspotModel({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory CoolspotModel.fromJson(String id, Map<String, dynamic> json) =>
      CoolspotModel(id: id, name: json['name'], imageUrl: json['imageUrl']);

  @override
  List<Object?> get props => [id, name, imageUrl];
}
