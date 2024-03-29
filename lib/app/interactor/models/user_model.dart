class UserModel {
  final String name;
  final String message;

  const UserModel({
    required this.name,
    required this.message,
  });

  UserModel copyWith({
    String? name,
    String? message,
  }) {
    return UserModel(
      name: name ?? this.name,
      message: message ?? this.name,
    );
  }
}
