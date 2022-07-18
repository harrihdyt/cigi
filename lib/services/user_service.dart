part of 'services.dart';

class UserService {
  final String name;
  final String email;
  final String city;
  final int phoneNumber;

  UserService({
    required this.email,
    this.city = '',
    required this.name,
    this.phoneNumber = 0,
  });

  UserService.fromJson(Map<String, Object> json)
      : this(
          name: json['name'] as String,
          email: json['email'] as String,
          city: json['city'] as String,
          phoneNumber: json['phoneNumber'] as int,
        );

  Map<String, Object> toJson() {
    return {
      'name': FirebaseAuth.instance.currentUser!.displayName!,
      'email': FirebaseAuth.instance.currentUser!.email!,
      'city': this.city,
      'phoneNumber': this.phoneNumber,
    };
  }
}
