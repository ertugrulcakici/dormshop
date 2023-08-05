// ignore_for_file: unused_element

part of "auth_service.dart";

interface class IAuthService {
  UserModel? userModel;
  UserCredential? userCredential;
  User? get firebaseCurrentUser => throw UnimplementedError();

  Future<bool> get isLoggedIn => throw UnimplementedError();
  bool get didEmailVerified => throw UnimplementedError();

  Future<void> login({required String email, required String password}) =>
      throw UnimplementedError();
  Future<void> register({
    required String displayName,
    required String email,
    required String password,
  }) =>
      throw UnimplementedError();
  Future<void> loginWithGoogle() => throw UnimplementedError();
  Future<void> signOut() => throw UnimplementedError();
  Future<void> deleteUserData() => throw UnimplementedError();
}
