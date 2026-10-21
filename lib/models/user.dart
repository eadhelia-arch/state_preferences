class User {
  final String name;
  final String email;
  final bool isLoggedIn;

  User({
    required this.name,
    required this.email,
    this.isLoggedIn = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'isLoggedIn': isLoggedIn,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      isLoggedIn: map['isLoggedIn'] ?? false,
    );
  }

  User copyWith({
    String? name,
    String? email,
    bool? isLoggedIn,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User &&
        other.name == name &&
        other.email == email &&
        other.isLoggedIn == isLoggedIn;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ isLoggedIn.hashCode;
}