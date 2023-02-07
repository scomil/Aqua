import 'package:aqua/ffi/generated_bindings.dart';
import 'dart:ffi';

class AuthHandler {
  String id;
  Pointer<GA_auth_handler> authHandler;
  late DateTime createdAt;

  AuthHandler({
    required this.id,
    required this.authHandler,
  }) {
    createdAt = DateTime.now();
  }

  AuthHandler copyWith({
    String? id,
    Pointer<GA_auth_handler>? authHandler,
  }) {
    return AuthHandler(
      id: id ?? this.id,
      authHandler: authHandler ?? this.authHandler,
    );
  }

  @override
  String toString() =>
      'AuthHandler(id: $id, authHandler: $authHandler, createdAt: $createdAt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthHandler &&
        other.id == id &&
        other.authHandler == authHandler &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode => id.hashCode ^ authHandler.hashCode ^ createdAt.hashCode;
}
