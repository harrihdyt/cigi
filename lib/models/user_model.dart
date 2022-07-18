part of 'model.dart';

class UserModel extends Equatable {
  final String name;
  final String email;
  final String city;
  final int phone;

  UserModel({
    required this.name,
    required this.email,
    this.city = '',
    this.phone = 08,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        city,
        phone,
      ];
}
